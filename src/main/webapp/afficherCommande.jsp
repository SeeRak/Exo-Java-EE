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
		request.getParameter("adresseClient") == "" || request.getParameter("telephoneClient") == "" || request.getParameter("emailClient") == "" ||
		request.getParameter("montantCommande") == "" || request.getParameter("modePaiementCommande") == "" || request.getParameter("statutPaiementCommande") == "" ||
		request.getParameter("modeLivraisonCommande") == "" || request.getParameter("statutLivraisonCommande") == ""){
	out.println("<p class=\"info\"> Erreur - Vous n'avez pas rempli tous les champs obligatoires.<br> <a href=\"http://localhost:8080/tp1/creation-commande\"> Cliquez ici </a> pour accéder au formulaire de création d'un client </p>");
}
else{
	out.println("<p class=\"info\"> Commande créée avec succès </p>");
}
%>

<p>Client</p>
<p>Nom : <%out.println(request.getParameter("nomClient"));%></p>
<p>Prénom : <%out.println(request.getParameter("prenomClient"));%></p>
<p>Adresse : <%out.println(request.getParameter("adresseClient"));%></p>
<p>Numéro de téléphone : <%out.println(request.getParameter("telephoneClient"));%></p>
<p>Email : <%out.println(request.getParameter("emailClient"));%></p>

<p>Commande</p>
<p>Date :</p>
<p>Montant : <%out.println(request.getParameter("montantCommande"));%></p>
<p>Mode paiement : <%out.println(request.getParameter("modePaiementCommande"));%></p>
<p>Statut du paiment : <%out.println(request.getParameter("statutPaiementCommande"));%></p>
<p>Mode de livraison : <%out.println(request.getParameter("modeLivraisonCommande"));%></p>
<p>Statut de la livraison : <%out.println(request.getParameter("statutLivraisonCommande"));%></p>
</body>
</html>
