<%@page import="beans.Client"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="inc/style.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
<% if(request.getParameter("nomClient") == "" || request.getParameter("prenomClient") == "" || 
		request.getParameter("adresseClient") == "" || request.getParameter("telephoneClient") == "" || request.getParameter("emailClient") == "" ){
	out.println("<p class=\"info\">Erreur - Vous n\'avez pas rempli tous les champs obligatoires.<br> <a href=\"http://localhost:8080/tp1/creation-client\"> Cliquez ici </a> pour acc�der au formulaire de cr�ation d'un client</p>");
}
else{
	out.println("<p class=\"info\">Client cr�� avec succ�s </p>");
}
%>

<p>Nom : <%out.println(request.getParameter("nomClient"));%></p>
<p>Pr�nom : <%out.println(request.getParameter("prenomClient"));%></p>
<p>Adresse : <%out.println(request.getParameter("adresseClient"));%></p>
<p>Num�ro de t�l�phone : <%out.println(request.getParameter("telephoneClient"));%></p>
<p>Email : <%out.println(request.getParameter("emailClient"));%></p>
</body>
</html>