<%@page import="org.libertas.bd.Clinica"%>
<%@page import="org.libertas.bd.ClinicaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	int idClinica = Integer.parseInt(request.getParameter("id"));
    String uf = request.getParameter("uf");
    String cnpj = request.getParameter("cnpj");
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("endereco");
    String telefone = request.getParameter("telefone");
    String email = request.getParameter("email");
    String website = request.getParameter("website");
     
        ClinicaDao clinicaDao = new ClinicaDao();
        Clinica c = new Clinica();
        c.setUf(uf);
        c.setCnpj(cnpj);
        c.setNome(nome);
        c.setEndereco(endereco);
        c.setTelefone(telefone);
        c.setEmail(email);
        c.setWebsite(website);
        c.setIdclinica(idClinica);
        clinicaDao.alterar(c);
%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
    <meta charset="UTF-8">
    <title>Processamento de Edição</title>
</head>
<body>
    <h1>Processamento de Edição da Clínica</h1>
    
    <p>Os dados da clínica foram atualizados com sucesso!</p>

    <button><a href="listar.jsp">Voltar para a lista de clínicas</a></button>
</body>
</html>
