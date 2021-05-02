package com.tt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;
import com.tt.dto.QnaVO;

public class QnaDAO {

  private QnaDAO() {
  }

  private static QnaDAO instance = new QnaDAO();

  public static QnaDAO getInstance() {
    return instance;
  }

  public ArrayList<QnaVO> listQna(String id) {
    ArrayList<QnaVO> qnaList = new ArrayList<QnaVO>();
    String sql = "select * from qna where id=? order by qseq desc";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
      conn = DBManager.getConnection();
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
      rs = pstmt.executeQuery();
      while (rs.next()) {
        QnaVO qnaVO = new QnaVO();
        qnaVO.setQseq(rs.getInt("qseq"));
        qnaVO.setSubject(rs.getString("subject"));
        qnaVO.setContent(rs.getString("content"));
        qnaVO.setReply(rs.getString("reply"));
        qnaVO.setId(rs.getString("id"));
        qnaVO.setRep(rs.getString("rep"));
        qnaVO.setIndate(rs.getTimestamp("indate"));
        qnaList.add(qnaVO);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return qnaList;
  }

  public QnaVO getQna(int seq) {
	    QnaVO qnaVO = null;
	    String sql = "select * from qna where qseq=?";
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setInt(1, seq);
	      rs = pstmt.executeQuery();
	      if (rs.next()) {
	        qnaVO = new QnaVO();
	        qnaVO.setQseq(seq);
	        qnaVO.setSubject(rs.getString("subject"));
	        qnaVO.setContent(rs.getString("content"));
	        qnaVO.setId(rs.getString("id"));
	        qnaVO.setIndate(rs.getTimestamp("indate"));
	        qnaVO.setReply(rs.getString("reply"));
	        qnaVO.setRep(rs.getString("rep"));
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
	    return qnaVO;
	  }
// �닔�젙 qseq:auto 16.11.25
  public void insertqna(QnaVO qnaVO, String session_id) {
    String sql = "insert into qna (subject, "
        + "content, id) values(?, ?, ?)";

    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
      conn = DBManager.getConnection();
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, qnaVO.getSubject());
      pstmt.setString(2, qnaVO.getContent());
      pstmt.setString(3, session_id);
      pstmt.executeUpdate();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      DBManager.close(conn, pstmt);
    }
  }

  public ArrayList<QnaVO> listAllQna() {
	    ArrayList<QnaVO> qnaList = new ArrayList<QnaVO>();
	    // 게시판의 데이터를 가지고 오는 쿼리 rep:1:게시물 2: 답변
	    String sql = "select * from qna order by indate desc";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      rs = pstmt.executeQuery();
	      while (rs.next()) {
	        QnaVO qnaVO = new QnaVO();
	        qnaVO.setQseq(rs.getInt("qseq"));
	        qnaVO.setSubject(rs.getString("subject"));
	        qnaVO.setContent(rs.getString("content"));
	        qnaVO.setId(rs.getString("id"));
	        qnaVO.setIndate(rs.getTimestamp("indate"));
	        qnaVO.setReply(rs.getString("reply"));
	        qnaVO.setRep(rs.getString("rep"));
	        qnaList.add(qnaVO);
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return qnaList;
	  }
  public void deleteQna(int qseq) {
	    String sql = "delete from qna where qseq=?";
	    
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    
	    try {
	      conn = DBManager.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setInt(1, qseq);
	      pstmt.executeUpdate();
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt);
	    }
	  }
  public ArrayList<QnaVO> listKindHotel(String search) {
	    ArrayList<QnaVO> QnaList = new ArrayList<QnaVO>();
	    String sql= "select * from qna where search=?";
	    
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    int hoValue = Integer.parseInt(search);
	    
	    try {
	        conn = DBManager.getConnection();
	        if( hoValue == 10 ) {
	            sql = "select * from qna";
	            pstmt = conn.prepareStatement(sql);
	            rs = pstmt.executeQuery();    	  
	        }
	        else {
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, search);
	        rs = pstmt.executeQuery();
	  	  }
	      
	      while (rs.next()) {
	        QnaVO qnaVO = new QnaVO();
	        qnaVO.setQseq(rs.getInt("qseq"));
	        qnaVO.setSubject(rs.getString("subject"));
	        qnaVO.setContent(rs.getString("content"));
	        qnaVO.setId(rs.getString("id"));
	        qnaVO.setIndate(rs.getTimestamp("indate"));
	        qnaVO.setReply(rs.getString("reply"));
	        qnaVO.setRep(rs.getString("rep"));
	        QnaList.add(qnaVO);
	      }
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBManager.close(conn, pstmt, rs);
	    }
	    return QnaList;
	  }
	}