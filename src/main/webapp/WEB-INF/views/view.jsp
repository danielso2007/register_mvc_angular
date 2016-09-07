<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE>
<html ng-app="editControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Usuário</title>

<style type="text/css">

	label{
	    display: inline-block;
	    width: 90px;
	}
	
</style>
<script type="text/javascript" src="<spring:url value="/resources/js/angular.min.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/resources/js/editController.js"/>"></script>

</head>
<body>

<form ng-controller="editController">

	<h2>Editar Usuário</h2>
	<br/>

	<label for="input-codigo" >Id:</label>
	<input type="text" id="input-codigo" style="width:80px;" ng-model="object.id" readonly="readonly"  ng-init="object.id='${userModel.id}'"/>
	
	<br/><br/>
		
	<label for="input-nome" >Nome:</label>
	<input type="text" id="input-nome" style="width:220px;" ng-model="object.name"  ng-init="object.name='${userModel.name}'"/>
	
	<br/><br/>

	<label for="input-login">E-mail:</label>
	<input type="text" id="input-login" style="width:120px;" ng-model="object.email" ng-init="object.email='${userModel.email}'"/>
	
	<br/><br/>
	
	<label for="input-senha">Senha:</label>
	<input type="password" id="input-senha" style="width:120px;" ng-model="object.password" ng-init="object.password='${userModel.password}'"/>
	
	<br/><br/>
	
	<p>
		<a href= "../list">Voltar</a>
		
		<input type="button" value="Salvar" ng-click="save()"/>
				
	</p>
	
</form>




</body>
</html>