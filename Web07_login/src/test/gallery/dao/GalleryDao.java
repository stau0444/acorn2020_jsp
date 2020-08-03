package test.gallery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.gallery.dto.GalleryDto;
import test.util.DbcpBean;

public class GalleryDao {
	private static GalleryDao dao;
	
	public GalleryDao() {}
	
	public static GalleryDao getInstance(){
		if(dao==null) {
			dao=new GalleryDao();
		}
		return dao;
	}
		public List<GalleryDto> getList(GalleryDto dto) {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			List<GalleryDto> list = new ArrayList<>();
			try {
				conn = new DbcpBean().getConn();
				String sql = "SELECT * "
						+ " FROM"
						+ " (SELECT result1.*,ROWNUM AS rnum "
						+ "  FROM(SELECT num,writer,caption,imagePath,regdate "
						+ "  FROM board_gallery "
						+ "  ORDER BY num DESC) result1) "
						+ " WHERE rnum BETWEEN ? AND ?";
				ps = conn.prepareStatement(sql);
				ps.setInt(1,dto.getStartRowNum());
				ps.setInt(2,dto.getEndRowNum());
				rs = ps.executeQuery();

				while (rs.next()) {
					GalleryDto tmp = new GalleryDto();
					tmp.setNum(rs.getInt("num"));
					tmp.setWriter(rs.getString("writer"));
					tmp.setCaption(rs.getString("caption"));
					tmp.setImagepath(rs.getString("imagepath"));
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
		public Boolean insert(GalleryDto dto) {
			Connection conn = null;
			PreparedStatement ps = null;
			int flag = 0;
			try {
				conn = new DbcpBean().getConn();
				String sql = "INSERT INTO board_gallery" 
						+ "(num,writer,caption,imagepath,regdate)"
						+ " values(board_gallery_seq.nextval,?,?,?,SYSDATE)";
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getWriter());
				ps.setString(2, dto.getCaption());
				ps.setString(3, dto.getImagepath());
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
		public boolean delete(int num) {
			Connection conn = null;
			PreparedStatement ps = null;
			int flag = 0;
			try {
				conn = new DbcpBean().getConn();
				String sql = "DELETE FROM board_gallery" + " WHERE NUM=?";
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
		//전체 로우의 갯수 리턴
		public int getCount() {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int count=0;
			try {
				
				conn = new DbcpBean().getConn();
				String sql = "SELECT NVL(MAX(ROWNUM),0)AS count FROM board_gallery ";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				if(rs.next()) {count=rs.getInt("count");}			
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
			return count;
		}
		
	}
	

