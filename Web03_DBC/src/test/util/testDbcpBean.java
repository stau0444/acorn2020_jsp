package test.util;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/* 
 * 1.servers/context.xml 문서에 db 접속 정보가 있어야 한다.
 * 
 * 2.프로젝트에 web.info 폴더에 web.xml에 접속 정보가 있어야 한다.
 *  
 * 3.web.info/lib 폴더에 ojdbc.jar 파일이 있어야 한다.
 * 
 * 	위의 3가지 설정을 한후에 
	
	- new DbcpBean().getConn() 메소드를 호출하면 Connection Pool 에서 
	Connection 객체가 하나 리턴된다. 
	
	- Dao 에서 Connection 객체를 사용한후 .close() 메소드를 호출하면 
	  자동으로 Connection Pool 에 Connection 객체가 반환된다. 
 * */
public class testDbcpBean {
	
	private Connection conn;
	
	public testDbcpBean() {
		
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			//jdbc/myoracle이라는 이름의 DataSource(Connection Pool)에서
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//Connection 객체를 하나 가져온다.
			conn = ds.getConnection();
			System.out.println("접속성공");
			//etc.
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	public Connection getconn() {
		return conn;
	}
}
