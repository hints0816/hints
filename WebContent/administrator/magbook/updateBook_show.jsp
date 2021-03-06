<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
  <%@ page import="java.util.Map"%>
  <%@ page import="java.sql.*,java.util.List,Util.DBConnection,model.BookInfo" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/left.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fillcon.css">
<%@ include file="/templet/theader.jsp" %>
</head>
<body>
<div class="content">
	<div class="menu2">
      <h2>管理菜单</h2>
        <div class="menu_content">
		<ul>
			<li><a href="${pageContext.request.contextPath}/administrator/indexAdmin.jsp">首页</a></li>
			<li class="navmenu"><a href="#">管理用户信息</a>
				<ul>
				<li><a href="${pageContext.request.contextPath}/administrator/maguser/addUser.jsp">添加用户信息</a></li>
				<li><a href="${pageContext.request.contextPath}/administrator/maguser/magUser.jsp">管理用户信息</a></li>
				</ul>
			</li>
			<li  class="navmenu"><a  id="add-button" href="#">管理图书信息</a>
				<ul>
				<li><a href="${pageContext.request.contextPath}/administrator/magbook/addBook.jsp">添加图书信息</a></li>
				<li><a href="${pageContext.request.contextPath}/administrator/magbook/magBook.jsp">管理图书信息</a></li>
				</ul>
			</li>
			<li class="navmenu"><a href="#">管理销售员信息</a>
				<ul>
				<li><a href="${pageContext.request.contextPath}/administrator/magsales/addSales.jsp">添加销售员信息</a></li>
				<li><a href="${pageContext.request.contextPath}/administrator/magsales/magSales.jsp">管理销售员信息</a></li>
				</ul>
			</li>
			<li  class="navmenu"><a href="#">管理会员信息</a>
				<ul>
				<li><a href="${pageContext.request.contextPath}/administrator/magmember/addMember.jsp">添加会员信息</a></li>
				<li><a href="${pageContext.request.contextPath}/administrator/magmember/magMember.jsp">管理会员信息</a></li>
				</ul>
			</li> 
			<li><a href="${pageContext.request.contextPath}/demo.jsp">退出</a></li>
		</ul>  
	   </div>
	</div>
	<div class="main">
	<h2>修改图书信息</h2>
		<div class="antzoen">
		<c:set var="bookid" value="${param.id}"></c:set>
		<c:set var="cd" value="${BookInfo()}"></c:set>
		<c:set var="JJ" value="${cd.setBookid(bookid)}"></c:set>
		<c:set var="ci" value="${cd.getBookInfo()}"></c:set>
	
		<form action="saveBook_do.jsp" method="post">
		<table>
				<tr>
					<td>图书编号：</td>
					<td><input type="text" name="bookid" value="${ci.getBookid()}${c2.getBookid()}"/><span class="error">${errors.get("bookid")}</span></td>
				</tr>
				<tr>
					<td>图书名字：</td>
					<td><input type="text" name="bookname" value="${ci.getBookname()}${c2.getBookname()}"/><span class="error">${errors.get("bookname")}</span></td>
				</tr>
				<tr>
					<td>作者：</td>
					<td><input type="text" name="author" value="${ci.getAuthor()}${c2.getAuthor()}"/><span class="error">${errors.get("author")}</span></td>
				</tr>
				<tr>
					<td>单价：</td>
					<td><input type="text" name="price" value="${ci.getPrice()}${c2.getPrice()}"/><span class="error">${errors.get("price")}</span></td>
				</tr>
				<tr>
					<td>类别：</td>
					<td><input type="text" name="category" value="${ci.getCategory()}${c1.getCategory()}"/><span class="error">${errors.get("category")}</span></td>
				</tr>
				<tr>
					<td>出版社：</td>
					<td><input type="text" name="publish" value="${ci.getPublish()}${c2.getPublish()}"/><span class="error">${errors.get("publish")}</span></td>
				</tr>
				<tr>
					<td>出版日期：</td>
					<td><input type="date" name="publish_date" value="${ci.getPublish_date()}${c2.getPublish_date()}"/><span class="error">${errors.get("publish_date")}</span></td>
				</tr>
				<tr>
					<td>库存：</td>
					<td><input type="text" name="bookcount" value="${ci.getBookcount()}${c2.getBookcount()}"/><span class="error">${errors.get("bookcount")}</span></td>
				</tr>
			</table>
			<div class="button">
			    <input class="t2" type="submit" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="t2" type="reset" value="重置"/>
			</div>
		</form>
		</div>
	</div>
</div>
<%@ include file="/templet/footer.jsp" %>
</body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".navmenu").mouseover(function(){
		$(this).children("ul").show();
		
	})
	$(".navmenu").mouseout(function(){
		$(this).children("ul").hide();
		
	})
})
</script>
</html>
