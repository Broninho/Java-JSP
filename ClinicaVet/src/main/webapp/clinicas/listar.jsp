<%@page import="org.libertas.bd.Clinica"%>
<%@page import="org.libertas.bd.ClinicaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cadastro de Clínica Veterinária</h1>
	
		<table>
		<th>ID</th>
		<th>UF</th>
		<th>CNPJ</th>
		<th>Nome</th>
		<th>Endereço</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Website</th>
		<th>Editar</th>
		
		<%
		
			ClinicaDao adao = new ClinicaDao();
			for (Clinica c: adao.listar()){
				out.print("<tr>");
				out.print("<td>" + c.getIdclinica() + "</td>");
				out.print("<td>" + c.getUf() + "</td>");
				out.print("<td>" + c.getCnpj() + "</td>");
				out.print("<td>" + c.getNome() + "</td>");
				out.print("<td>" + c.getEndereco() + "</td>");
				out.print("<td>" + c.getTelefone() + "</td>");
				out.print("<td>" + c.getEmail() + "</td>");
				out.print("<td>" + c.getWebsite() + "</td>");
				out.print("<td><button><a href='editar.jsp?id=" + c.getIdclinica() + "'>Editar</a></button></td>");
				out.print("</tr>");
			}
		%>
		
	</table>
		<button id="inicio"><a href="cadastro.jsp">Início</a></button>
</body>
</html>