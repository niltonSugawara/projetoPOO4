<%-- 
    Document   : cliente
    Created on : 19/04/2018, 15:57:19
    Author     : Ton
--%>

<%@page import="br.com.fatecpggrupo3.bd.BdClientes"%>
<%@page import="br.com.fatecpggrupo3.bd.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int indice = 0;%>

<%  
        Clientes c = new Clientes();
        c.setNome("");
        c.setCpf("");
        c.setRg("");
        c.setEmail("");
        c.setTelefone("");
        c.setEndereco("");
    if (request.getParameter("add")!= null){
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));    
        
        BdClientes.getClientesList().add(c);
        response.sendRedirect(request.getRequestURI());
} else if (request.getParameter("del") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        BdClientes.getClientesList().remove(i);
        response.sendRedirect(request.getRequestURI());
} else if (request.getParameter("alt") != null){
        
        c.setNome(BdClientes.getClientesList().get(Integer.parseInt(request.getParameter("i"))).getNome());
        c.setCpf(BdClientes.getClientesList().get(Integer.parseInt(request.getParameter("i"))).getCpf());
        c.setRg(BdClientes.getClientesList().get(Integer.parseInt(request.getParameter("i"))).getRg());   
        c.setEmail(BdClientes.getClientesList().get(Integer.parseInt(request.getParameter("i"))).getEmail());
        c.setTelefone(BdClientes.getClientesList().get(Integer.parseInt(request.getParameter("i"))).getTelefone());
        c.setEndereco(BdClientes.getClientesList().get(Integer.parseInt(request.getParameter("i"))).getEndereco());
        indice = Integer.parseInt(request.getParameter("i"));

} else if (request.getParameter("salvar") !=null){
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco")); 
        BdClientes.clientesList.set(Integer.parseInt(request.getParameter("indice")), c);

}      
%>
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
            <a class="nav-link" href="index.jsp">Inicio <span class="sr-only">(atual)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="cliente.jsp">Cliente</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="fornecedor.jsp">Fornecedor</a>
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
                <input type="text" class="form-control" id="usr" name="nome" required="" value="<%= c.getNome() %>">
                </div>
                </div>
        <div class="col-md-4">
            <div class="form-group">
            <label for="usr">CPF:</label>
            <input type="text" class="form-control" id="usr" name="cpf" required="" maxlength="11" minlength="11" value="<%= c.getCpf()%>">
        </div>
        </div>
        </div>
        
    <div class="row">
     <div class="col-md-4">
         <div class="form-group">
         <label for="usr">RG:</label>
         <input type="text" class="form-control" id="usr" name="rg" required="" maxlength="14" value="<%= c.getRg()%>">
    </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
        <label for="usr">Email:</label>
        <input type="email" class="form-control" id="usr" name="email" required="" value="<%= c.getEmail()%>">
    </div>
    </div>
    </div>
        
     <div class="row">
        <div class="col-md-4">
            <div class="form-group">
            <label for="usr">Telefone:</label>
            <input type="text" class="form-control" id="usr" name="telefone"
                   required="" maxlength="12" minlength="11" value="<%= c.getTelefone()%>">
      </div>
      </div>
        <div class="col-md-6">
            <div class="form-group">
            <label for="usr">Endereço:</label>
            <input type="text" class="form-control" id="usr" name="endereco" required="" value="<%= c.getEndereco()%>">
        </div>
        </div>
        </div>
        
        <div class="row">
            <%if (request.getParameter("alt") == null){
            %>
            <input type="submit" value="Adicionar" class="btn-add" name="add">
            <%
            }else {
            %>
            <input type="submit" value="Salvar" class="btn-add" name="salvar">
            <input type="hidden" name="indice" value="<%=indice%>">
            
            <%}%>
            
            
            
            <input type="reset" value="Limpar" class="btn-limpar">
        </div>
        </form>
    </div>
    </div>
        <center>
        <div class="cliente-cadastrado">
            
            <p>Clientes Cadastrados</p>
        </div>
        
        <div class="col-md-12 caixa-tabela">    
     <table class="table table-hover">
    <thead>
      <tr>
        <th>Nome Completo</th>
        <th>CPF</th>
        <th>RG</th>
        <th>Email</th>
        <th>Telefone</th>
        <th>Endereço</th>
      </tr>
    </thead>
    <tbody>
        <%for (int i =0; i<BdClientes.getClientesList().size();i++) {
        %>
      <tr>
        <td><%= BdClientes.getClientesList().get(i).getNome() %></td>
        <td><%= BdClientes.getClientesList().get(i).getCpf() %></td>
        <td><%= BdClientes.getClientesList().get(i).getRg() %></td>
        <td><%= BdClientes.getClientesList().get(i).getEmail() %></td>
        <td><%= BdClientes.getClientesList().get(i).getTelefone() %></td>
        <td><%= BdClientes.getClientesList().get(i).getEndereco() %></td>
        <td>
            <form>
                <input type="hidden" name="i" value="<%=i%>"/>
                <input type="submit" name="alt" value="Alterar" class="alterar"/>
                    </form>
        </td>
        <td>
            <form>
              <input type="hidden" name="i" value="<%=i%>"/>
                    <input type="submit" name="del" value="Excluir">
                    
                    </form>
        </td>
      </tr> 
      <%}%>
    </tbody>
  </table>
        </div>
   </center>     
    <footer>
        <div class="rodape">
            <p>Todos os direitos reservados</p>
        </div>
    </footer>
    </body>
</html>
