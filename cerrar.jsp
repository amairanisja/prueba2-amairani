
<%
    HttpSession sesion;
    sesion = request.getSession();
    String usuario = (String)sesion.getAttribute("usuarioA");

    if (usuario!=null)
    {
      
      int rol = (int)sesion.getAttribute("rol");
      if(rol == 1)
      {
      	sesion.setAttribute("aprobacion", null);
      }
      sesion.setAttribute("rol", null);
      sesion.setAttribute("usuarioA",null);
    }
      
    response.sendRedirect("index.jsp");
   
%>
