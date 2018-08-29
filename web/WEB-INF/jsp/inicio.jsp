<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
  String imagePath = (String) request.getAttribute("imagePath");
  Integer imageNumber = (Integer) request.getAttribute("imageNumber");
  Integer contadorVisitas = (Integer) request.getServletContext().getAttribute("contadorVisitas");
  String contextPath = request.getContextPath();
%>    

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desarrollo en Java</title>
        <link href="<%= contextPath %>/css/estilo.css" type="text/css" media="all" rel="stylesheet" />
    </head>
    <body>           
        <div>  
            <header>                
                <h1>Tienda on-line</h1>
                <div>
                    <a href="<%= contextPath %>/login">[Acceder]</a>
                </div>
            </header>
            <div id="menu">
                <ul>
                    <li>
                        <a href="<%= contextPath %>/inicio">Inicio</a>
                    </li>
                    <li>
                        <a href="<%= contextPath %>/productos">Productos</a>
                    </li>
                    <li>
                        <a href="<%= contextPath %>/private/mantenedor">Mantenedor</a>
                    </li>
                    <li>
                        <a href="<%= contextPath %>/contacto">Contacto</a>
                    </li>
                </ul>
                
            </div>
            <h2>Inicio</h2>
            <h4>Mostrando Imagen N°<%= imageNumber %></h4>
            <img src="<%= imagePath  %>" />
        </div>
        <footer>
            Visitante N° <%= contadorVisitas %>
        </footer>
    </body>
</html>
