<%-- 
    Document   : cadastrarpessoa
    Created on : Jun 6, 2023, 10:40:22 PM
    Author     : admin
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<!--%@page  import="java.util.List"%>-->

--%>




<!DOCTYPE html>
<html>
           <%
                    if(request.getParameter("pmensagem") != null)
                    out.write(request.getParameter("pmensagem"));
                    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--
        <link rel="stylesheet" href="">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        -->
        <title>JSP Page</title>
    </head>
    <body>
        <a href="./index.html">Pagina inicial</a>
        <h1>Hello World!</h1>
        
        <div>
            <form id="pessoa" action="receberdadospessoa.jsp" method="POST">
                <h3> Cadastro de pessoas </h3>
                <p></p>
                <label class="cabecalho" id="msg">
                   
                </label>
                
                <fieldset>
                    <label>Nome</label>
                    <div>
                        <input id="nome" name="nome" placeholder="Informe o nome" type="text" required maxlength="40" style="text-transform:uppercase ">
                    </div>
                </fieldset>
                
                <fieldset>
                    <label>Email</label>
                    <div>
                        <input id="email" name="email" placeholder="Informe o E-mail" type="text" required maxlength="40" style="text-transform:lowercase "/>
                    </div>
                </fieldset> <br>
                
                <div>
                    <div>
                        <input type="submit" value="Cadastrar" class="btn btn-primary"/>
                    </div> 
                    
                     <div>
                        <input type="reset" value="Cancelar" class="btn btn-danger"/>
                    </div> 
                </div>
                
            </form>
        </div>
    </body>
</html>
