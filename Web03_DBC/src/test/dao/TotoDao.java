
package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import test.dto.TodoDto;
import test.util.DbcpBean;

public class TotoDao {
	private static TotoDao dao;
	private TotoDao() {}
	//자신의 참조값을 리턴해주는 static 메소드 
	public static TotoDao getInstance() {
		if(dao==null) {
			dao=new TotoDao();
		}
		return dao;
	}
	
	//회원 목록을 리턴해주는 메소드 
	public boolean insert(String thing) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			if(thing.equals("")) {conn.close();}
			String sql="INSERT INTO todo(num,things,time) values(todo_num.nextval,?,sysdate)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,thing);
			flag=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
		
	}
	public List<TodoDto> getList(){
		List<TodoDto> list=new ArrayList<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=new DbcpBean().getConn();
			String sql="SELECT num,things,time"
					+ " FROM todo"
					+ " ORDER BY num ASC";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TodoDto dto=new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setThings(rs.getString("things"));
				dto.setTime(rs.getString("time"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		return list;
	}
	
	public boolean delete(String num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			String sql="DELETE FROM todo"
					+ " WHERE NUM=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,num);
			flag=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
		
	}
	public boolean update(String thing, int num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			String sql="UPDATE todo "
					+ " SET things=? "
					+ " WHERE NUM=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,thing);
			pstmt.setInt(1, num);
			flag=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(pstmt!=null)pstmt.close();
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


