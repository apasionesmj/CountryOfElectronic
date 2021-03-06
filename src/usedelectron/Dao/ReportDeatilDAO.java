package usedelectron.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import usedelectron.Dto.ReplyDto;
import usedelectron.Dto.ReportDto;

public class ReportDeatilDAO {
	
	private static ReportDeatilDAO instance; //싱글턴
	public static ReportDeatilDAO getInstance() {
		if (instance == null) {
			instance = new ReportDeatilDAO();
		}
		return instance;
	}
	

	private Connection getConnection() { //DB연동
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
	
	public ReportDto reportdetail(int s_r_num) {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "SELECT * FROM SAVELIST_REPORT WHERE s_r_num = ?"; 
		
		System.out.println("reportDetail 접속 했는지 확인");
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, s_r_num);
			
			ResultSet rs  = pstmt.executeQuery(); 
			
				
			ReportDto repoDto = new ReportDto();
				
			while(rs.next()) {
				
				repoDto.setS_r_num(rs.getInt("s_r_num"));
				repoDto.setS_r_body(rs.getString("s_r_body"));
				repoDto.setS_r_ur_id(rs.getString("s_r_ur_id"));
				repoDto.setS_r_image(rs.getString("s_r_image"));
				repoDto.setS_r_bd_num(rs.getInt("s_r_bd_num"));
				repoDto.setS_r_division(rs.getInt("s_r_division"));
				repoDto.setS_r_title(rs.getString("s_r_title"));
				repoDto.setS_r_date(rs.getDate("s_r_date"));
				
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
	
			return repoDto;
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return null;
	}
	
	public List<ReplyDto> getrelist(int Cm_bd_num) { //댓글 뽑아오기
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		 List<ReplyDto> list =  new ArrayList<>();
		 
		 String sql = "SELECT * FROM COMMANT WHERE CM_BD_NUM = ? ORDER BY CM_GROUPID asc,CM_ORDERNO asc";
	
			try {
				
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, Cm_bd_num); //게시판 번호로 해당 댓글 찾기
				
				ResultSet rs = pstmt.executeQuery();
			
				
				while (rs.next()) {//돌면서 DTO에 넣고 list에 추가
					
					ReplyDto r = new ReplyDto() ;
					
					r.setCm_num(rs.getInt("CM_NUM"));
					r.setCm_body(rs.getString("CM_BODY"));
					r.setCm_ur_id(rs.getString("CM_UR_ID"));
					r.setCm_groupid(rs.getInt("CM_GROUPID"));
					r.setCm_bd_num(rs.getInt("CM_BD_NUM"));
					r.setCm_orderno(rs.getInt("CM_ORDERNO"));
					r.setCm_date(rs.getDate("CM_DATE"));
					r.setCm_level(rs.getInt("CM_LEVEL"));
					
					list.add(r);
				}
				
					pstmt.close();
					conn.close();
					rs.close();
					
					return list;
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 
		 
		return null;
		
	}





	public ReplyDto getrerelist(int parientid) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		 String sql = "SELECT * FROM COMMANT WHERE CM_NUM = ? ";
	
			try {
				
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, parientid); //댓글 
				
				ResultSet rs = pstmt.executeQuery();
			
				ReplyDto parlist = new ReplyDto() ;
				while (rs.next()) {//DTO에 넣어주기
					
					parlist.setCm_num(rs.getInt("CM_NUM"));
					parlist.setCm_body(rs.getString("CM_BODY"));
					parlist.setCm_ur_id(rs.getString("CM_UR_ID"));
					parlist.setCm_groupid(rs.getInt("CM_GROUPID"));
					parlist.setCm_bd_num(rs.getInt("CM_BD_NUM"));
					parlist.setCm_orderno(rs.getInt("CM_ORDERNO"));
					parlist.setCm_date(rs.getDate("CM_DATE"));
					parlist.setCm_level(rs.getInt("CM_LEVEL"));
					
				}
				
					pstmt.close();
					conn.close();
					rs.close();
					
					return parlist;
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		
		return null;
		
	}


	public boolean rereadd(ReplyDto reply, ReplyDto parinfo) { //답글 등록

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO COMMANT(CM_BODY,CM_UR_ID,CM_BD_NUM,CM_DATE,CM_GROUPID,CM_LEVEL,CM_ORDERNO,CM_NUM) "
				+ " values(?,?,?,sysdate,?,?,?,(SELECT NVl(max(CM_NUM),0) + 1 FROM COMMANT))"; 
		
		System.out.println("readd 접속 했는지 확인");
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, reply.getCm_body());
			pstmt.setString(2, reply.getCm_ur_id());
			pstmt.setInt(3, reply.getCm_bd_num());
			
			pstmt.setInt(4, parinfo.getCm_groupid());
			pstmt.setInt(5, parinfo.getCm_level() + 1);
			pstmt.setInt(6, parinfo.getCm_orderno() + 1);
			
			
			System.out.println("부모 댓글 값 잘 가져오는지 확인" + parinfo.getCm_level());
			
			pstmt.executeQuery();
			
			pstmt.close();
			conn.close();
			
	
			return true;
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		
		return false;
		
	}



	public boolean reupdate(ReplyDto parinfo) { //답글 추가 업데이트

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE COMMANT SET CM_ORDERNO = CM_ORDERNO + 1 WHERE CM_GROUPID = ? AND CM_ORDERNO >= ?"; 
		
		System.out.println("답글 추가 업데이트 확인");
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setInt(1, parinfo.getCm_groupid());
			pstmt.setInt(2, parinfo.getCm_orderno());
			
			
			pstmt.executeQuery();
			
			pstmt.close();
			conn.close();
			
	
			return true;
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		
		return false;
	}
		
	


	

	
		
	
	
	public ReportDeatilDAO() { //기본 생성자 넣기
		
	}
}
