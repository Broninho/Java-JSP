<%@page import="org.libertas.bd.ClinicaDao"%>
<%@page import="org.libertas.bd.Clinica"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Cadastro de Clínica Veterinária</h1>
	<%
		Clinica c = new Clinica();
		c.setUf(request.getParameter("uf"));
		c.setCnpj(request.getParameter("cnpj"));
		c.setNome(request.getParameter("nome"));
		c.setEndereco(request.getParameter("endereco"));
		c.setTelefone(request.getParameter("telefone"));
		c.setEmail(request.getParameter("email"));
		c.setWebsite(request.getParameter("website"));
		
		ClinicaDao adao = new ClinicaDao();
		adao.inserir(c);
	
	%>
	
	<p>Clínica salva com sucesso</p>
	</br>
	<button><a href="listar.jsp">Listar</a></button>
	<button><a href="cadastro.jsp">Início</a></button>
</body>
</html>