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
<%	//상품삭제

	
	
	String pId = request.getParameter("pId");
	ProductDAO dao = new ProductDAO();
	ProductDTO dto = new ProductDTO();
	dao.deleteProduct(pId);
	out.println("<script language='javascript'>");
    out.println("alert('삭제 완료')");
    out.println("location.href='selectAll.jsp'");
    out.println("</script>");

		
		
	%>

</body>
</html>