<%-- 
    Document   : receberdadospessoa
    Created on : Jun 6, 2023, 10:40:53 PM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Pessoa" %>

<% 
String vnome = request.getParameter("nome");
String vemail = request.getParameter("email");

Pessoa pes = new Pessoa();
pes.setNome(vnome);
pes.setEmail(vemail);


if(pes.IcluirPessoa(pes)){
    response.sendRedirect("cadastrarpessoa.jsp?pmensagem=Pessoa cadastrada com sucesso");
    }else{
        response.sendRedirect("cadastrarpessoa.jsp?pmensagem= Problema ao cadastrar pessoa");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="./index.html">Pagina inicial</a>
        <h1>Hello World!</h1>
    </body>
</html>
