<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id = request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp?index=<%=id%>" method="post">
    <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="<%=u.getName()%>"/></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><input type="text" name="gender" value="<%=u.getGender()%>"/></td>
        </tr>
        <tr>
            <td>StudentId:</td>
            <td><input type="text" name="studentId" value="<%=u.getStudentId()%>"/></td>
        </tr>
        <tr>
            <td>PhoneNum:</td>
            <td><input type="text" name="phoneNum" value="<%=u.getPhoneNum()%>"/></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="text" name="age" value="<%=u.getAge()%>"/></td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td><input type="text" name="birthday" value="<%=u.getBirthday()%>"/></td>
        </tr>
        <tr>
            <td>Major:</td>
            <td><input type="text" name="major" value="<%=u.getMajor()%>"/></td>
        </tr>
        <tr>
            <td>Part:</td>
            <td><input type="text" name="part" value="<%=u.getPart()%>"/></td>
        </tr>
        <tr>
            <td>Bonus:</td>
            <td><input type="text" name="bonus" value="<%=u.getBonus()%>"/></td>
        </tr>
        <tr>
            <td>Minus:</td>
            <td><input type="text" name="minus" value="<%=u.getMinus()%>"/></td>
        </tr>
        <tr>
            <td>Particulars:</td>
            <td><textarea cols="50" rows="5" name="particulars"><%=u.getParticulars()%></textarea></td>
        </tr>
        <%--	<input type = "hidden" name = "index">--%>
        <tr>
            <td colspan="2"><input type="submit" value="Edit Post"/>
                <input type="button" value="Cancel" onclick="history.back()"/></td>
        </tr>
    </table>
</form>

</body>
</html>