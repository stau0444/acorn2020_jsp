package test1.freind.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import test1.DBcpbean.DBcpbean;
import test1.friend.dto.FriendDto;

public class FriendDao {
	
	private static FriendDao dao;
	
	private FriendDao() {};
	
	public static FriendDao getInstance() {
		if(dao==null) {
			dao=new FriendDao();
		}
		return dao;
	}
	public Boolean insert(FriendDto dto) {
		Connection conn=null;
		PreparedStatement ps=null;
		int flag=0;
		try {
			conn=new DBcpbean().getconn();
			String sql="INSERT INTO friend"
					+ "(num,name,phone)"
					+ " VALUES(friend_seq.nextval,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1,dto.getName());
			ps.setString(2,dto.getPhone());
			flag=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	}
}
