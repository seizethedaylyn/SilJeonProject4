<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %><%--
  Created by IntelliJ IDEA.
  User: rlacofls
  Date: 2023/11/17
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String filename = "";
    int sizelimit = 15 * 1024 * 1024;

    String realpath = request.getServletContext().getRealPath("upload");
    File dir = new File(realpath);
    if (!dir.exists()) dir.mkdirs();
    System.out.println("file dir : " + dir);

    MultipartRequest multipartRequest = null;
    multipartRequest = new MultipartRequest(request, realpath, sizelimit, "utf-8", new DefaultFileRenamePolicy());

    filename = multipartRequest.getFilesystemName("img");
    System.out.println("file name : " + filename);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
파일명: <%=filename%><br/>
<img src="${pageContext.request.contextPath}/upload/<%=filename%>">
</body>
</html>
