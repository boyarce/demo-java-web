<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
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
            <h2>Login</h2>  
            
            <span class="error">
                <% 
                    String error = (String) request.getAttribute("error");
                    if(error != null) {
                        out.println(error);
                    }
                %>
            </span>
            <form action="<%= contextPath %>/login" method="POST">
                
                <table>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <input type="text" name="usuario" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td>
                            <input type="password" name="clave" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" name="submit" value="Acceder" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <footer>
            
        </footer>
    </body>
</html>
