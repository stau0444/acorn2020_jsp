package test.file.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.file.dto.FileDto;
import test.util.DbcpBean;

public class FileDao {
	private static FileDao dao;
	private FileDao() {}
	public static FileDao getInstance() {
		if(dao==null) {
			dao=new FileDao();
		}
		return dao;
	}
	
	//전체 row를 구해옴
	public int getCount() {
			int count=0;
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				conn = new DbcpBean().getConn();
				String sql = "SELECT NVL(MAX(ROWNUM),0) AS num"
						+ "	FROM borad_file";
				//로우넘에서 가장큰 숫자를 얻어오면 전체 row 의 갯수가 된다.
				ps = conn.prepareStatement(sql);
				//혹시 row 가 하나도 없으면 null 이 언어와 지기 때문에 null 인 경우 0으로 바꿔줘야한다.NVL(x,0) null인 x를 0으로 정해준다.
				rs=ps.executeQuery();
				if(rs.next()) {
					count=rs.getInt("num");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (ps != null)
						ps.close();
					if (conn != null)
						conn.close();
				} catch (Exception e2) {
				}
			}
			return count;
		}
		//제목 파일명 검색결과의 전체 row의 갯수를 리턴해주는 메소드
		public int getCountTF(FileDto dto) {
				int count=0;
				Connection conn = null;
				PreparedStatement ps = null;
				ResultSet rs = null;
				try {
					conn = new DbcpBean().getConn();
					String sql = "SELECT NVL(MAX(ROWNUM),0) AS num"
							+ "	FROM borad_file"
							+ " WHERE title LIKE '%'||?||'%' OR orgFileName LIKE '%'||?||'%'";
							
					ps = conn.prepareStatement(sql);
					ps.setString(1,dto.getTitle());
					ps.setString(2,dto.getOrgFileName());
					rs=ps.executeQuery();
					if(rs.next()) {
						count=rs.getInt("num");
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (ps != null)
							ps.close();
						if (conn != null)
							conn.close();
					} catch (Exception e2) {
					}
				}
				return count;
			}
		//전체 row를 구해옴
		public int getCountT(FileDto dto) {
				int count=0;
				Connection conn = null;
				PreparedStatement ps = null;
				ResultSet rs = null;
				try {
					conn = new DbcpBean().getConn();
					String sql = "SELECT NVL(MAX(ROWNUM),0) AS num"
							+ "	FROM borad_file"
							+ " WHERE title LIKE '%'||?||'%'";
							
					ps = conn.prepareStatement(sql);
					ps.setString(1,dto.getTitle());
					rs=ps.executeQuery();
					if(rs.next()) {
						count=rs.getInt("num");
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (ps != null)
							ps.close();
						if (conn != null)
							conn.close();
					} catch (Exception e2) {
					}
				}
				return count;
			}
		//작성자로 검색했을때 로우를 리턴해주는 메소드
		public int getCountW(FileDto dto) {
				int count=0;
				Connection conn = null;
				PreparedStatement ps = null;
				ResultSet rs = null;
				try {
					conn = new DbcpBean().getConn();
					String sql = "SELECT NVL(MAX(ROWNUM),0) AS num"
							+ "	FROM borad_file"
							+ " WHERE writer LIKE '%'||?||'%'";
							
					ps = conn.prepareStatement(sql);
					ps.setString(1,dto.getWriter());
					rs=ps.executeQuery();
					if(rs.next()) {
						count=rs.getInt("num");
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (ps != null)
							ps.close();
						if (conn != null)
							conn.close();
					} catch (Exception e2) {
					}
				}
				return count;
			}
	
	
	//파일 목록을 리턴해주는 메소드
	public List<FileDto> getList(FileDto dto) {
		List<FileDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * "
					+ " FROM "
					+ " (SELECT result1.*,ROWNUM AS rnum"
					+ " FROM (SELECT num,writer,title,orgFileName,fileSize,regdate"
					+ " 	  FROM borad_file"
					+ "		  ORDER BY num DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, dto.getStartRowNum());
			ps.setInt(2, dto.getEndRowNum());
			rs = ps.executeQuery();

			while (rs.next()) {
				FileDto tmp = new FileDto();
				tmp.setNum(rs.getInt("num"));
				tmp.setWriter(rs.getString("writer"));
				tmp.setTitle(rs.getString("title"));
				tmp.setOrgFileName(rs.getString("orgFileName"));
				tmp.setFileSize(rs.getLong("fileSize"));
				tmp.setRegdate(rs.getString("regdate"));
				list.add(tmp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return list;
	}
	
	//제목+파일명으로 검색했을때 불러올 리스트명
	public List<FileDto> getListTF(FileDto dto) {
		List<FileDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * "
					+ " FROM "
					+ " (SELECT result1.*,ROWNUM AS rnum"
					+ " FROM (SELECT num,writer,title,orgFileName,fileSize,regdate"
					+ " 	  FROM borad_file"
					+ "		  WHERE title LIKE '%'||?||'%' OR orgFileName LIKE '%'||?||'%'"
					+ "		  ORDER BY num DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getOrgFileName());
			ps.setInt(3, dto.getStartRowNum());
			ps.setInt(4, dto.getEndRowNum());
			rs = ps.executeQuery();

			while (rs.next()) {
				FileDto tmp = new FileDto();
				tmp.setNum(rs.getInt("num"));
				tmp.setWriter(rs.getString("writer"));
				tmp.setTitle(rs.getString("title"));
				tmp.setOrgFileName(rs.getString("orgFileName"));
				tmp.setFileSize(rs.getLong("fileSize"));
				tmp.setRegdate(rs.getString("regdate"));
				list.add(tmp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return list;
	}
	
	//제목검색
	public List<FileDto> getListT(FileDto dto) {
		List<FileDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * "
					+ " FROM "
					+ " (SELECT result1.*,ROWNUM AS rnum"
					+ " FROM (SELECT num,writer,title,orgFileName,fileSize,regdate"
					+ " 	  FROM borad_file"
					+ "	      WHERE title LIKE '%'||?||'%'"
					+ "		  ORDER BY num DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.setInt(2, dto.getStartRowNum());
			ps.setInt(3, dto.getEndRowNum());
			rs = ps.executeQuery();

			while (rs.next()) {
				FileDto tmp = new FileDto();
				tmp.setNum(rs.getInt("num"));
				tmp.setWriter(rs.getString("writer"));
				tmp.setTitle(rs.getString("title"));
				tmp.setOrgFileName(rs.getString("orgFileName"));
				tmp.setFileSize(rs.getLong("fileSize"));
				tmp.setRegdate(rs.getString("regdate"));
				list.add(tmp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return list;
	}
	
	public FileDto getData(int num) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		FileDto dto = new FileDto();
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM borad_file WHERE NUM=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto.setNum(num);
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setOrgFileName(rs.getString("orgFileName"));
				dto.setSaveFileName(rs.getString("saveFileName"));
				dto.setFileSize(rs.getLong("fileSize"));
				dto.setRegdate(rs.getString("regdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs!=null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return dto;
	}
	
	//작성자 검색
	public List<FileDto> getListW(FileDto dto) {
		List<FileDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * "
					+ " FROM "
					+ " (SELECT result1.*,ROWNUM AS rnum"
					+ " FROM (SELECT num,writer,title,orgFileName,fileSize,regdate"
					+ " 	  FROM borad_file"
					+ "		  WHERE writer LIKE '%'||?||'%' "
					+ "		  ORDER BY num DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getWriter());
			ps.setInt(2, dto.getStartRowNum());
			ps.setInt(3, dto.getEndRowNum());
			rs = ps.executeQuery();

			while (rs.next()) {
				FileDto tmp = new FileDto();
				tmp.setNum(rs.getInt("num"));
				tmp.setWriter(rs.getString("writer"));
				tmp.setTitle(rs.getString("title"));
				tmp.setOrgFileName(rs.getString("orgFileName"));
				tmp.setFileSize(rs.getLong("fileSize"));
				tmp.setRegdate(rs.getString("regdate"));
				list.add(tmp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
			}
		}
		return list;
	}
	
	//파일 정보를 DB에 저장하는 메소드
		public Boolean insert(FileDto dto) {
			Connection conn = null;
			PreparedStatement ps = null;
			int flag = 0;
			try {
				conn = new DbcpBean().getConn();
				String sql = "INSERT INTO borad_file "
						+ " (num,writer,title,orgFileName,saveFileName,fileSize,regdate)"
						+ " VALUES(board_file_seq.NEXTVAL,?,?,?,?,?,SYSDATE)";
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getWriter());
				ps.setString(2, dto.getTitle());
				ps.setString(3, dto.getOrgFileName());
				ps.setString(4, dto.getSaveFileName());
				ps.setLong(5, dto.getFileSize());
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
	//글 삭제 
	public Boolean delete(int num) {
		Connection conn = null;
		PreparedStatement ps = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM borad_file WHERE NUM=?";
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
}
