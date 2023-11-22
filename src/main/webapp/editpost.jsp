<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardDAO" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.board.BoardVO"/>
<jsp:setProperty property="*" name="u"/>

<%
    BoardDAO boardDAO = new BoardDAO();

    // index 설정
    String id = request.getParameter("index");
    System.out.println("index : " + id);

    int i = boardDAO.updateBoard(u);
    response.sendRedirect("posts.jsp");
%>