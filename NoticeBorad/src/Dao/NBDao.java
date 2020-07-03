package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DbcpBean;

public class NBDao {
	
	private static NBDao dao;
	
	private NBDao() {};
	
	public static NBDao getInstance(){ 
		if(dao==null) {
			dao=new NBDao();
		}
		return dao;
	}
	public Boolean insert(String title ,String msg) {
		Connection conn=null;
		PreparedStatement ps= null;
		int flag=0;
		
		try {
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO notice"
					+ "(num,title,regdate,msg)"
					+ " VALUES(notice_seq.nextval,?,SYSDATE,msg)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, msg);
			flag=ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}if(flag>0) {
			return true;
		}else {
			return false;
		}
	}
}
