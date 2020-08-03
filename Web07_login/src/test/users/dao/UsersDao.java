package test.users.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.users.dto.UsersDto;
import test.util.DbcpBean;

public class UsersDao {
	
	private static UsersDao dao;
	
	private UsersDao() {}
	public static UsersDao getInstance() {
		if(dao==null) {
			dao=new UsersDao();
		}
		return dao;
	}
	public Boolean insert(UsersDto dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "INSERT INTO users"
					+ " (id,pwd,email,regdate)"
					+ "VALUES(?,?,?,SYSDATE)";
					
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getEmail());
			flag = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	public Boolean isVaild(UsersDto dto) {
		//유효한지 아닌지를 정할 필드를 만들어주고 초기값을 false
		boolean isVaild=false;
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=new DbcpBean().getConn();
			String sql="SELECT id"
					+ " FROM users"
					+ " WHERE id=? AND pwd=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			rs=ps.executeQuery();
			while(rs.next()) {
				isVaild=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
					
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return isVaild;
	}
	public UsersDto userInfo(String userId) {
		//유효한지 아닌지를 정할 필드를 만들어주고 초기값을 false
		boolean isVaild=false;
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		UsersDto dto=null;
		try {
			conn=new DbcpBean().getConn();
			String sql="SELECT * "
					+ " FROM users"
					+ " WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, userId);
			
			rs=ps.executeQuery();
			//의미상 while 보단 if가 맞다 
			if(rs.next()) {
				dto=new UsersDto();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setEmail(rs.getString("email"));
				dto.setProfile(rs.getString("profile"));
				dto.setRegdate(rs.getString("regdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
					
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return dto;
	}
	public Boolean delete(String userID) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM users"
					+ " WHERE id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			
			flag = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	public Boolean updatePwd(UsersDto dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE users"
					+ " SET pwd=?"
					+ " WHERE id=? and pwd=?";
					
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getNewPwd());
			ps.setString(2, dto.getId());
			ps.setString(3, dto.getPwd());
			flag = ps.executeUpdate();
			System.out.println(flag);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	public Boolean update(UsersDto dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE users " 
					+ " SET email=?,profile=?"
					+ " WHERE id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getEmail());
			ps.setString(2, dto.getProfile());
			ps.setString(3, dto.getId());

			flag = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	public boolean isExist(String inputId) {
		//유효한지 아닌지를 정할 필드를 만들어주고 초기값을 false
		boolean isExist=false;
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=new DbcpBean().getConn();
			String sql="SELECT id"
					+ " FROM users"
					+ " WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, inputId);
			rs=ps.executeQuery();
			//의미상 while 보단 if가 맞다 
			System.out.println("중복확인성공");
			if(rs.next()) {
				isExist=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)
					rs.close();
				
				if (ps != null)
					ps.close();
					
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return isExist;
	}
}
