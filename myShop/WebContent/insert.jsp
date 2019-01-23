<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="product.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
								
	<%	//상품등록
		String pId = request.getParameter("pId");
		String name = request.getParameter("name");
		String ex = request.getParameter("ex");
		String price = request.getParameter("price");
		String picture = request.getParameter("picture");
		System.out.println(picture);
		ProductDAO dao = new ProductDAO();
		ProductDTO dto = new ProductDTO();
		dto.setpId(pId);
		dto.setName(name);
		dto.setEx(ex);
		dto.setPrice(price);
		dao.addProduct(dto);
		out.println("<script language='javascript'>");
	    out.println("alert('등록 완료')");
	    out.println("location.href='selectAll.jsp'");
	    out.println("</script>");
	%>						
</body>
</html>