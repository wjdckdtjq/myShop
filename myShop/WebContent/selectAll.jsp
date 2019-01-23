<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="product.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

<!-- css -->
<link rel="stylesheet" href="style.css">
<style>

 table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
  table {
    background-color: #bbdefb;
  }


</style>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-4 col-lg-10 p-b-75">
					
					<p style="color:blue; background-color:sky;"><font size="10">상품리스트</font></p>
					<hr>
					
				
				<br>
				<table border='1'>
					<tr>
						<th width='5%' style="text-align: center;"> 번호 </th>
						
						<th width='25%'> pId </th>
						<th width='15%'> 상품명 </th>
						<th width='35%'> 상품설명 </th>
						<th width='10%'> 가격 </th>
						
						<th width='10%'> - </th>
					
						</tr>
						
				<%
				
				ProductDAO dao = new ProductDAO();
				ArrayList<ProductDTO> list = dao.getInfoALL();
				for (int i = 0; i < list.size(); i++) {
					ProductDTO dto = new ProductDTO();
					dto = list.get(i);
					
				%>	
				
					<tr>
						<td style="text-align: center;"> <%=i %></td> <!-- 번호 -->
						
						<td> <%=dto.getpId() %> </td> <!-- pId -->
						<td> <%=dto.getName() %> </td> <!-- 상품명 -->
						<td> <%=dto.getEx() %> </td> <!-- 상품설명 -->
						<td> <%=dto.getPrice() %>원 </td> <!-- 가격 -->
						<td style="text-align: center;"> <a href = "delete.jsp?pId=<%=dto.getpId() %>"> 삭제 </a></td> <!-- 삭제 -->
						
						
				<%	}%>
				
			</table>
			<a href="select.html">상품 검색</a><br>
			<a href="insert.html">상품 등록</a><br>
			<a href="update.html">상품 수정</a>
	
					
</div>
</body>
</html>