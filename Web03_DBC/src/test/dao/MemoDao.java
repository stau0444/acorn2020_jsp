package test.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.DTO.MemberDto;
import test.DTO.MemoDto;
import test.util.DBConnect;

public class MemoDao {
	private static MemoDao dao;
	
	private MemoDao(){};
	
	public static MemoDao getInstance() {
		if(dao==null) {
			dao=new MemoDao();
		}
			return dao;
	}
	
	public void insert(MemoDto dto) {
		Connection conn= null;
		PreparedStatement ps= null;
		
		try {
			conn=new DBConnect().getConn();
			String sql="INSERT INTO MEMO"
					+ "(num,content,regdate)"
					+ " VALUES(memo_seq.nextval,?,SYSDATE)";
			ps=conn.prepareStatement(sql);
			
			ps.setString(1,dto.getContents());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	public void delete(int num) {
		Connection conn= null;
		PreparedStatement ps= null;
		
		try {
			conn=new DBConnect().getConn();
			String sql="DELETE FROM MEMO"
					+ " WHERE NUM=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1,num);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	public void Update(MemoDto dto) {
		Connection conn= null;
		PreparedStatement ps= null;
		
		try {
			conn=new DBConnect().getConn();
			String sql="UPDATE memo"
					+ " SET content=?"
					+ " WHERE num=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1,dto.getContents());
			ps.setInt(2, dto.getNum());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
	}
	public MemoDto getData(int num) {
		Connection conn= null;
		PreparedStatement ps= null;
		ResultSet rs= null;
		MemoDto dto = null;
		try {
			conn=new DBConnect().getConn();
			String sql="SELECT num,content,regdate"
					+ " FROM memo"
					+ " WHERE num=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, num);
			rs=ps.executeQuery();
			
			rs.next();
			dto=new MemoDto();
			dto.setNum(num);
			dto.setContents(rs.getString("content"));
			dto.setRegdate(rs.getString("regdate"));
				
			
	
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		return dto;
	}
	public List<MemoDto> getList() {
		Connection conn= null;
		PreparedStatement ps= null;
		ResultSet rs= null;
		MemoDto dto = null;
		List<MemoDto> li=new ArrayList<>();
		try {
			conn=new DBConnect().getConn();
			String sql="SELECT num,content,to_char(regdate,'YYYY\"년\"MM\"월\"DD\"일\" AM HH:MI') as regdate"
					+ " FROM memo";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				dto=new MemoDto();
				dto.setNum(rs.getInt("num"));
				dto.setContents(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				li.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null)ps.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		return li;
	}
}
