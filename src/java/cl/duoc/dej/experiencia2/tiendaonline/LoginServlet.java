/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.duoc.dej.experiencia2.tiendaonline;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CETECOM
 */
public class LoginServlet extends HttpServlet {

    private static final String VISTA_LOGIN = "/WEB-INF/jsp/publico/login.jsp";
    private static final String VISTA_POSTLOGIN = "/WEB-INF/jsp/privado/mantenedor.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.getRequestDispatcher(VISTA_LOGIN).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //recuperar valores enviados desde el formulario
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        String vista = VISTA_LOGIN;
        
        //verificar si el usuario y clave son validos
        if("admin".equals(usuario) && "dej4501".equals(clave)) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", "Administrador");
            vista = VISTA_POSTLOGIN;
        } else {
            request.setAttribute("error", "Usuario o clave incorrectos");
        }
        
        request.getRequestDispatcher(vista).forward(request, response);     
        
    }
    
    
}
