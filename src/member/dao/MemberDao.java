package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import member.model.Member;

public class MemberDao {
	public Member selectById(Connection conn, String id)throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from member where id = ?");
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			Member member = null;
			if(rs.next()) {
				member = new Member(
						rs.getString("id"),
						rs.getString("name"),
						rs.getString("pwd"),
						rs.getString("gender"),
						rs.getString("birthdate"),
						rs.getString("tel"),
						rs.getString("email"),
						rs.getString("con_past"),
						rs.getString("con_date"),
						rs.getString("con_cat"),
						rs.getString("position"),
						toDate(rs.getTimestamp("regdate"))
						);
			}
			return member;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	private Date toDate(Timestamp date) {
		return date == null?null:new Date(date.getTime());
	}
	public void insert(Connection conn, Member mem)throws SQLException{
		try(
				PreparedStatement pstmt = 
				conn.prepareStatement("insert into member values(?,?,?,?,?,?,?,?,?,?,?,sysdate)")){
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getName());
			pstmt.setString(3, mem.getPwd());
			pstmt.setString(4, mem.getGender());
			pstmt.setString(5, mem.getBirthdate());
			pstmt.setString(6, mem.getTel());
			pstmt.setString(7, mem.getEmail());
			pstmt.setString(8, mem.getCon_past());
			pstmt.setString(9, mem.getCon_date());
			pstmt.setString(10, mem.getCon_cat());
			pstmt.setString(11, mem.getPosition());
			pstmt.setTimestamp(12, new Timestamp(mem.getRegdate().getTime()));
			pstmt.executeUpdate();
		}
	}
	public void update(Connection conn, Member member)throws SQLException{
		try(
				PreparedStatement pstmt = 
				conn.prepareStatement("update member set name = ?, password = ? "
						+ " where id=? ")){
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getId());
			pstmt.executeUpdate();
		}
	}
}
