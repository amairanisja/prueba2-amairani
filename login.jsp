<%
	String usuario = null;
    HttpSession sesion;
    sesion = request.getSession();
    usuario = (String)sesion.getAttribute("usuarioA");
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/login/general.css">
		<link rel="stylesheet" type="text/css" href="css/global/menu.css">
		<link rel="stylesheet" type="text/css" href="css/global/fuente.css">
		<link rel="stylesheet" type="text/css" href="css/global/pie.css">
		<title>Aruma</title>
	</head>

	<body>

<%
		if (usuario != null)
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
%>
			<%@ include file = "jsp/menu/menuV.jsp" %>
			<%@ include file = "jsp/login/login.jsp" %>
<%
		}
%>	
		<div class="separadorV"></div>
		<%@ include file = "jsp/pie/pie.jsp" %>

	</body>	

</html>