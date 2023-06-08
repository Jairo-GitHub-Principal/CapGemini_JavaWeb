<%-- 
    Document   : listar
    Created on : Jun 8, 2023, 12:23:41 AM
    Author     : admin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Pessoa" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="./index.html">Pagina inicial</a>
        <h1>Listar pessoas</h1>
        
        <%
            Pessoa pes= new Pessoa();
            List <Pessoa> listapessoa = pes.ListarPessoas();
        %>
        
        <label>
            <%
                if(request.getParameter("pmensagem")!=null)
                out.write(request.getParameter("pmensagem"));
            %>
        </label>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Email</th>
                </tr>
            </thead>
            
            <tbody>
                <% for(Pessoa P: listapessoa){%>
                <tr>
                    <td><%out.write(P.getId());%></td>
                    <td><%out.write(P.getNome());%></td>
                    <td><%out.write(P.getEmail());%></td>
                </tr>
                
                <% } %>
                
            </tbody>
    
        <table>
            
        </table>
    </body>
</html>
