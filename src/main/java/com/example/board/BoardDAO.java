package com.example.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.example.board.BoardDAO;
import com.example.board.BoardVO;
import com.example.board.JDBCUtil;

public class BoardDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String BOARD_INSERT = "insert into BOARD (name, gender, studentId, phoneNum, age, birthday, major, part, bonus, minus, particulars) values (?,?,?,?,?,?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update BOARD set name=?, gender=?, studentId=?, phoneNum=?, age=?, birthday=?, major=?, part=?, bonus = ?,minus=?, particulars=? where seq=?";
    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
    private final String BOARD_GET = "select * from BOARD  where seq=?";
    private final String BOARD_LIST = "select * from BOARD order by seq asc";

    public int insertBoard(BoardVO vo) {
        System.out.println("===> JDBC로 insertBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_INSERT);
            stmt.setString(1, vo.getName());
            stmt.setString(2, vo.getGender());
            stmt.setString(3, vo.getStudentId());
            stmt.setString(4, vo.getPhoneNum());
            stmt.setInt(5, vo.getAge());
            stmt.setString(6, vo.getBirthday());
            stmt.setString(7, vo.getMajor());
            stmt.setString(8, vo.getPart());
            stmt.setInt(9, vo.getBonus());
            stmt.setInt(10, vo.getMinus());
            stmt.setString(11, vo.getParticulars());
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    // 글 삭제
    public void deleteBoard(BoardVO vo) {
        System.out.println("===> JDBC로 deleteBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_DELETE);
            stmt.setInt(1, vo.getSeq());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int updateBoard(BoardVO vo) {
        System.out.println("===> JDBC로 updateBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_UPDATE);
            stmt.setString(1, vo.getName());
            stmt.setString(2, vo.getGender());
            stmt.setString(3, vo.getStudentId());
            stmt.setString(4, vo.getPhoneNum());
            stmt.setInt(5, vo.getAge());
            stmt.setString(6, vo.getBirthday());
            stmt.setString(7, vo.getMajor());
            stmt.setString(8, vo.getPart());
            stmt.setInt(9, vo.getBonus());
            stmt.setInt(10, vo.getMinus());
            stmt.setString(11, vo.getParticulars());
            stmt.setInt(12, vo.getSeq());

            System.out.println(vo.getName() + "-" + vo.getGender() + "-" + vo.getStudentId() +
                    "-" + vo.getPhoneNum() + "-" + vo.getAge() + "-" + vo.getBirthday() + "-" + vo.getMajor() +
                    "-" + vo.getPart() + "-" + vo.getBonus() + "-" + vo.getMinus() + "-" + vo.getParticulars());

            stmt.executeUpdate();
            return 1;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public BoardVO getBoard(int seq) {
        BoardVO one = new BoardVO();
        System.out.println("===> JDBC로 getBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_GET);
            stmt.setInt(1, seq);
            rs = stmt.executeQuery();
            if (rs.next()) {
                one.setSeq(rs.getInt("seq"));
                one.setName(rs.getString("name"));
                one.setGender(rs.getString("gender"));
                one.setStudentId(rs.getString("studentId"));
                one.setPhoneNum(rs.getString("phoneNum"));
                one.setAge(rs.getInt("age"));
                one.setBirthday(rs.getString("birthday"));
                one.setMajor(rs.getString("major"));
                one.setPart(rs.getString("part"));
                one.setBonus(rs.getInt("bonus"));
                one.setMinus(rs.getInt("minus"));
                one.setParticulars(rs.getString("particulars"));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = new ArrayList<BoardVO>();
        System.out.println("===> JDBC로 getBoardList() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_LIST);
            rs = stmt.executeQuery();
            while (rs.next()) {
                BoardVO one = new BoardVO();
                one.setSeq(rs.getInt("seq"));
                one.setName(rs.getString("name"));
                one.setGender(rs.getString("gender"));
                one.setStudentId(rs.getString("studentId"));
                one.setPhoneNum(rs.getString("phoneNum"));
                one.setAge(rs.getInt("age"));
                one.setBirthday(rs.getString("birthday"));
                one.setMajor(rs.getString("major"));
                one.setPart(rs.getString("part"));
                one.setBonus(rs.getInt("bonus"));
                one.setMinus(rs.getInt("minus"));
                one.setParticulars(rs.getString("particulars"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
