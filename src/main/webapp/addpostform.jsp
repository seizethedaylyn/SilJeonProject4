<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>정보 입력</title>
</head>
<body>

<h1>정보 입력</h1>
<form action="addpost.jsp" method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><input type="text" name="gender"/></td>
        </tr>
        <tr>
            <td>StudentId:</td>
            <td><input type="text" name="studentId"/></td>
        </tr>
        <tr>
            <td>PhoneNum:</td>
            <td><input type="text" name="phoneNum"/></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="text" name="age"/></td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td><input type="text" name="birthday"/></td>
        </tr>
        <tr>
            <td>Major:</td>
            <td><input type="text" name="major"/></td>
        </tr>
        <tr>
            <td>Part:</td>
            <td><input type="text" name="part"/></td>
        </tr>
        <tr>
            <td>Bonus:</td>
            <td><input type="text" name="bonus"/></td>
        </tr>
        <tr>
            <td>Minus:</td>
            <td><input type="text" name="minus"/></td>
        </tr>
        <tr>
            <td>Particulars:</td>
            <td><textarea cols="50" rows="5" name="particulars"></textarea></td>
        </tr>
        <tr>
            <td><a href="posts.jsp">View All Records</a></td>
            <td align="right"><input type="submit" value="Add Post"/></td>
        </tr>
    </table>
</form>

</body>
</html>