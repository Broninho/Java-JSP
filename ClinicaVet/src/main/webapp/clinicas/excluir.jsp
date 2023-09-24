<%@page import="java.util.List"%>
<%@page import="org.libertas.bd.ClinicaDao"%>
<%@page import="org.libertas.bd.Clinica"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<title>Excluir Clínica Veterinária</title>
</head>
<body>
	<form action="processar_exclusao.jsp">

	<h1>Exclusão da Clínica Veterinária</h1>
	ID da clínica que deseja excluir: <input type="text" name="idcli" required/>
	</br>
	<input id="excluir" type="submit" value="Excluir"/>
	<button><a href="listar.jsp">Lista</a></button>
	</form>
</body>
</html>