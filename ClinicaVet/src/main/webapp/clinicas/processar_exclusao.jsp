<%@page import="org.libertas.bd.ClinicaDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<title>Insert title here</title>
</head>
<body>

	<%
        try {

            int idClinicaExcluir = Integer.parseInt(request.getParameter("idcli"));
			
            ClinicaDao clinicaDao = new ClinicaDao();
        
            if (clinicaDao.existeClinica(idClinicaExcluir) == true) {
                clinicaDao.excluir(idClinicaExcluir);
                response.sendRedirect("confirmacao.jsp");
                
            } else {
            	%>
            	        <h1>Clínica com ID <%= idClinicaExcluir %> não encontrada.</h1>
            	<%
            	    }
        } catch (NumberFormatException e) {
        	%>
        	    <h1>ID da clínica inválido.</h1>
        	<%
        	} catch (Exception e) {
        	    e.printStackTrace();
        	%>
        	    <h1>Erro ao excluir a clínica.</h1>
        	<%
        	}
        	%>
    <button><a href="listar.jsp">Voltar para a lista de clínicas</a></button>
</body>
</html>