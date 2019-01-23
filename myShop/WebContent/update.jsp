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
<%	//상품수정

	
	String pId = request.getParameter("pId");
	String name = request.getParameter("name");
	String ex = request.getParameter("ex");
	String price = request.getParameter("price");
	System.out.println(pId);
	System.out.println(name);
	System.out.println(ex);
	System.out.println(price);

	ProductDAO dao = new ProductDAO();
	ProductDTO dto = new ProductDTO();
	ArrayList<ProductDTO> list = dao.getInfoALL();
	for (int i = 0; i < list.size(); i++) {
		dto = list.get(i);
		if(dto.getpId().equals(pId)) {
		dto.setpId(pId);
		dto.setName(name);
		dto.setEx(ex);
		dto.setPrice(price);
		dao.updateProduct(dto);
		
		out.println("<script language='javascript'>");
	    out.println("alert('수정 완료')");
	    out.println("location.href='selectAll.jsp'");
	    out.println("</script>");
			
		}else {
		
		out.println("<script language='javascript'>");
	    out.println("alert('상품없음')");
	    out.println("location.href='selectAll.jsp'");
	    out.println("</script>");
			
		}
	}
		
		
		
		
	%>

</body>
</html>