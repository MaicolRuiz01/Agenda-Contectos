<%-- 
    Document   : procesarContacto
    Created on : 25-oct-2022, 6:45:53
    Author     : freve
--%>

<%@page import="co.edu.ufps.agendacontactos.negocio.GestionContactos"%>
<%@page import="co.edu.ufps.agendacontactos.entidades.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="modelo" class="co.edu.ufps.agendacontactos.negocio.GestionContactos" scope="session"></jsp:useBean>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");
    String nombre= request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    String email = request.getParameter("email");
    
    
    Contacto contacto = new Contacto(Integer.parseInt(id), nombre, telefono, email);
    boolean rta = modelo.agregarContacto(contacto);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de contacto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel='stylesheet' type='text/css' media='screen' href='css/main.css'>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
        <script src='js/main.js'></script>
    </head>
    <body>
        <h1>Usuario registrado</h1>
        <%
            if(rta){
        %>
        <div class="table">
            <table class="table-primary">
                <tr>
                    <td>Id:</td>
                    <td><%= id %></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><%= nombre %></td>
                </tr>
                <tr>
                    <td>Teléfono:</td>
                    <td><%= telefono %></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><%= email %></td>
                </tr>
            </table>            
        </div>
            <%
                } else {
            %>
            <div class="alert alert-danger">
                Error al registrar el contacto.
            </div>
            <%
                }
            %>
    </body>
</html>
