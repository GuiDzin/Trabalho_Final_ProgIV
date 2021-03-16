<%-- 
    Document   : index
    Created on : 14/03/2021, 17:22:17
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Trabalho Final Prog IV</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            
            body{
                background-color: #C4C4C4;
            }
            iframe{
                margin-left:0;
                margin-top: 10px;
                width: 100%;
                height: 650px;
                background-color: #D4DCDD;
            }
            a{
                background: #C4C4C4;
                text-decoration: none;
                color: black;
                margin-right: 15px;

            }
            a:first-child{
                background-color: #FCEAEA;
                padding: 5px;
                margin-right: 25px;
            }
        </style>
    </head>
    <body>
        <div>
            <a href="inicio.jsp" target="meuframe">Logo</a>
            <a href="cadastrouser.html" target="meuframe">Cadastros</a> 
            <a href="cadastroprod.html" target="meuframe">Cadastro Produtos</a>
            <a href="consultas.html" target="meuframe">Venda</a>
             <a style="float:right" href="login.jsp" target="meuframe">Login</a>
        </div>
        <iframe src="inicio.jsp" name="meuframe"></iframe>
    </body>
</html>
