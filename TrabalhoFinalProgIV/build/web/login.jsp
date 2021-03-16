<%@page import="Controller.Usuario"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            

            *{
                box-sizing: border-box;
            }
            input[type=text], input[type=password]{
                margin-top: 10px;
                display: inline-block;
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border-color: transparent;
                border-radius: 10px;
            }
            
            input[type=button]{
                display: inline;
                width: 300px;
                padding: 10px;
                border-radius: 20px;
                background-color: #5C8997;
                border-color: transparent;
                color: red;
                font-weight: bold;
                font-size: 16px;
               
            }
            input[type=button]:second-child{
                float: right;
            }

            div{
                width: 70%;
                margin-left: auto;
                margin-right: auto;  
                margin-top: 100px;
            }


        </style>
    </head>
    <body>
        <div>            
            <form action="login.jsp" method="POST">
                <label>E-mail</label>
                <input type="text" name="email" placeholder="Informe seu e-mail" />
                <label>Senha</label>
                <input type="text" name="password" placeholder="Informe a senha" />
                <input type="button" name="btlogin" value="Login" onclick="validaDados()"/>
                <a href="cadastrouser.html"> 
                    <input type="button" style="float:right" name="btcadastrar" value="Cadastrar" />
                </a                
            </form>
        </div>
        
        
        <script>
             function validaDados(){
               var email = document.getElementsByName("email")[0]; 
               if(email.value === ""){
                  alert("informe email");
                  email.focus();
                  return;
               }
               
               var password = document.getElementsByName("password")[0]; 
               if(password.value === ""){
                  alert("informe a senha");
                  password.focus();
                  return;
               }
               
               document.getElementsByTagName("form")[0].submit();
             }
        </script>            
        
        <%
              String email = request.getParameter("email");
              String password = request.getParameter("password");
              if(email != null && password != null){
                  Usuario usuario = UsuarioDAO.logar(email, password);
                  if(usuario.getNome() != null){
                      session.setAttribute("user", usuario);                                            
                  }else{
                     out.write("<label>Usuario e senha não conferem</label>"); 
                  }
              }
         %>
    </body>
</html>

