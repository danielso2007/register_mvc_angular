<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE>
<html ng-app="newControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo Usuário</title>

<style type="text/css">

	label{
	    display: inline-block;
	    width: 90px;
	}
	
</style>

<script type="text/javascript" src="../resources/js/angular.min.js"></script>
<script type="text/javascript" src="../resources/js/newController.js"></script>


</head>
<body>

<form ng-controller="newController">

	<h2>Novo Usuário</h2>
	<br/>
	
	<label for="input-name" >Nome:</label>
	<input type="text" id="input-name" style="width:220px;" ng-model="object.name"/>
	
	<br/><br/>

	<label for="input-email">E-mail:</label>
	<input type="text" id="input-email" style="width:120px;" ng-model="object.email"/>
	
	<br/><br/>
	
	<label for="input-password">Senha:</label>
	<input type="password" id="input-password" style="width:120px;" ng-model="object.password"/>
	
	<br/><br/>
		
	<p>
		<a href= "../">Voltar</a>
		
		<input type="button" value="Salvar" ng-click="save()"/>
	 		
	</p>
	
	
</form>



</body>
</html>