package edu.smu.ss.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.smu.ss.vo.Member;

public class MemberDao {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}//1
	}
	public Connection getConnection() throws SQLException {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		Connection conn=DriverManager.getConnection(url, "scott", "tiger");
		return conn;
	}
     public void add(Member m) throws SQLException {
    	 Connection con = getConnection();
    	 String sql = "Insert in Member(id, pw, email) values(?,?,?)";
    	 PreparedStatement ps = con.prepareStatement(sql);
    	 ps.setString(1, m.getId());
    	 ps.setString(2, m.getPw());
    	 ps.setString(3, m.getEmail());
    	 ps.executeUpdate();
    	 ps.close();
    	 con.close();
     }
     public Member search(String id) throws SQLException {
    	 Member m=null;
 		Connection con=getConnection();
 		String sql="Select * from Member where id=?";
 		PreparedStatement ps=con.prepareStatement(sql);
 		ps.setString(1,id);
 		ResultSet rs=ps.executeQuery();

 		if(rs.next()) {
 			m = new Member(rs.getString(1),rs.getString(2),rs.getString(3));
 		}		
 		ps.close();
 		con.close();	
 		return m;	
     }
     public void delete(String id) throws SQLException {
 		Connection con=getConnection();
 		String sql="delete from Member where num=?";
 		PreparedStatement ps=con.prepareStatement(sql);
 		ps.setString(1, id);			
 		ps.executeUpdate();
 		ps.close();
 		con.close();	
 	}
 	public void update(Member m) throws SQLException {
 		Connection con=getConnection();
 		String sql="Update Member set pw=?, email=? where id=?";
 		PreparedStatement ps=con.prepareStatement(sql);
 		ps.setString(1, m.getPw());
 		ps.setString(2, m.getEmail());
 		ps.setString(3, m.getId());
 		
 		ps.executeUpdate();
 		ps.close();
 		con.close();	
 	}	
}
//add, search, delete, update