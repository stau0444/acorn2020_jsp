package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.board.dto.BoardDto;
import test.dto.BookDto;
import test.util.DbcpBean;

public class BoardDao {
	
	private static BoardDao dao;
	
	public static BoardDao getInstance() {
		if(dao==null) {
			dao=new BoardDao();
		}
		return dao;
	}
	//글하나의 정보를 저장하는 메소드
	public Boolean insert(BoardDto dto) {
		Connection conn=null;
		PreparedStatement ps=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO board_guest"
					+ "(num,writer,title,content,regdate)"
					+ " values(board_seq.nextval,?,?,?,SYSDATE)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getWriter());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
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
	//글하나의 정보를 삭제하는 메소드
	public Boolean delete(int num) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM board_guest"
					+ " WHERE NUM=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
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
	public BookDto getData() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		
		BookDto dto2=null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM book";
//					+ " WHERE NUM=?";
			ps = conn.prepareStatement(sql);
//			ps.setInt(1, 1);
			rs=ps.executeQuery();
			
//			if(rs.next()) {
//				dto=new BoardDto();
//				dto.setWriter(rs.getString("writer"));
//				dto.setTitle(rs.getString("title"));
//				dto.setContent(rs.getString("content"));
//				dto.setRegdate(rs.getString("regdate"));
//			};
			if(rs.next()) {
				dto2=new BookDto();
				dto2.setBnum(rs.getInt("bnum"));
				dto2.setBname(rs.getString("bname"));
				dto2.setBstory(rs.getString("bstory"));
				dto2.setBdate(rs.getString("bdate"));
				dto2.setBcompany(rs.getString("bcompany"));
				dto2.setBsort(rs.getString("bsort"));
				dto2.setBimg(rs.getString("bimg"));
				System.out.println(dto2.getBstory());
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
		return dto2;
	}
	public List<BoardDto> getList() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<BoardDto> list=new ArrayList<>();
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM board_guest"
					+ " ORDER BY NUM ASC";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNum(rs.getInt("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				list.add(dto);
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
		return list;
	}
	public Boolean update(BoardDto dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE board_guest "
					+ " SET writer=?, title=?, content=?"
					+ " WHERE num=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getWriter());
			ps.setString(2,dto.getTitle());
			ps.setString(3,dto.getContent());
			ps.setInt(4, dto.getNum());
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
}
