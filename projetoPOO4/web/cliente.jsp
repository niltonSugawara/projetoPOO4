<%-- 
    Document   : cliente
    Created on : 19/04/2018, 15:57:19
    Author     : Ton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Cliente</title>
    </head>
    <body>
        
         <nav class="navbar navbar-expand-lg cabecalho">
  
  <div class="collapse navbar-collapse .cabecalho" id="navbarNav">
      <div class="container">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Inicio <span class="sr-only">(atual)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Cliente</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Fornecedor</a>
      </li>
    </ul>
      </div>
  </div>
</nav>
      
    

    
<div class="container">
    <div class="titulo">
  <h1>Cadastro de Cliente</h1>
    
    </div>
    </div>
    
    <div class="container">
    <div class="caixa">
        <form>
        <div class="row">
     <div class="col-md-6">
         <div class="form-group">
  <label for="usr">Nome Completo:</label>
  <input type="text" class="form-control" id="usr">
</div>
            </div>
        <div class="col-md-4">
            <div class="form-group">
  <label for="usr">CPF:</label>
  <input type="text" class="form-control" id="usr">
</div>
            </div>
        </div>
        
         <div class="row">
     <div class="col-md-4">
         <div class="form-group">
  <label for="usr">RG:</label>
  <input type="text" class="form-control" id="usr">
</div>
            </div>
        <div class="col-md-6">
            <div class="form-group">
  <label for="usr">Email:</label>
  <input type="text" class="form-control" id="usr">
</div>
            </div>
        </div>
        
         <div class="row">
     <div class="col-md-4">
         <div class="form-group">
  <label for="usr">Telefone:</label>
  <input type="text" class="form-control" id="usr">
</div>
            </div>
        <div class="col-md-6">
            <div class="form-group">
  <label for="usr">Endereço:</label>
  <input type="text" class="form-control" id="usr">
</div>
            </div>
        </div>
        
        <div class="row">
            <input type="submit" value="Adicionar" class="btn-add">
            <input type="reset" value="Limpar" class="btn-limpar">
        </div>
        </form>
    </div>
    </div>
    
    
   

    <footer>
        <div class="rodape">
            <p>Todos os direiitos reservados</p>
        </div>
    </footer>

    </body>
</html>
