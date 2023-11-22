<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deletepost.jsp?id=' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>
<%
    BoardDAO boardDAO = new BoardDAO();
    List<BoardVO> list = boardDAO.getBoardList();
    request.setAttribute("list", list);
%>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Gender</th>
        <th>StudentId</th>
        <th>PhoneNum</th>
        <th>Age</th>
        <th>Birthday</th>
        <th>Major</th>
        <th>Part</th>
        <th>Bonus</th>
        <th>Minus</th>
        <th>Particulars</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td><a href="./view.jsp?id=${u.getSeq()}">${u.getName()}</a></td>
            <td>${u.getGender()}</td>
            <td>${u.getStudentId()}</td>
            <td>${u.getPhoneNum()}</td>
            <td>${u.getAge()}</td>
            <td>${u.getBirthday()}</td>
            <td>${u.getMajor()}</td>
            <td>${u.getPart()}</td>
            <td>${u.getBonus()}</td>
            <td>${u.getMinus()}</td>
            <td>${u.getParticulars()}</td>
            <td><a href="editform.jsp?id=${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="addpostform.jsp">Add New Post</a>
</body>
</html>