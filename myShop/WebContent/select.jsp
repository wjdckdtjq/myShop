<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="product.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-4 col-lg-10 p-b-75">
					<font size="7">상품검색</font>
					<hr>
					
				
				<br>
				<table border='1'>
					<tr>
						
						<th width='25%'> pId </th>
						<th width='15%'> 상품명 </th>
						<th width='35%'> 상품설명 </th>
						<th width='10%'> 가격 </th>
						
						<th width='10%'> - </th>
					
						</tr>
						
				<%
				String pId = request.getParameter("pId");
				try{
				
				ProductDAO dao = new ProductDAO();
				ProductDTO dto = new ProductDTO();
				ArrayList<ProductDTO> list = dao.getCheckOutInfo(pId);
				
					dto = list.get(0);
					
					if(dto.getpId() != null) {
				%>	
				
					<tr>
						
						<td> <%=dto.getpId() %> </td> <!-- pId -->
						<td> <%=dto.getName() %> </td> <!-- 상품명 -->
						<td> <%=dto.getEx() %> </td> <!-- 상품설명 -->
						<td> <%=dto.getPrice() %>원 </td> <!-- 가격 -->
						<td style="text-align: center;"> <a href = "delete.jsp?pId=<%=dto.getpId() %>"> 삭제 </a></td> <!-- 삭제 -->
						
						
				<%	}
				} catch (Exception e1) {
					out.println("<script> alert(\"상품없음\"); location.href='selectAll.jsp'; </script>");
					e1.printStackTrace();
				}
				
				%>
				
				
			</table>
			<a href="selectAll.jsp">뒤로가기</a><br>
			
			
					
</div>
</body>
</html>