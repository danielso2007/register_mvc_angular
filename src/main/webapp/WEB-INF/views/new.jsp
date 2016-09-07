<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE>
<html ng-app="newControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo Usuário</title>

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
	
	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>
<body>
<form class="row" ng-controller="newController">

<h1>Novo Usuário</h1>

 <div class="col s4">
      <div class="row">
        <div class="input-field col s12">
            <label for="input-name" >Nome:</label>
			<input type="text" id="input-name" ng-model="object.name"/>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
           <label for="input-email">E-mail:</label>
	       <input type="text" id="input-email" ng-model="object.email"/>
        </div>
        <div class="input-field col s6">
           <label for="input-password">Senha:</label>
	       <input type="password" id="input-password" ng-model="object.password"/>
        </div>
      </div>
      <div class="row">
		<a href= "../" class="waves-effect waves-light btn"><i class="material-icons left">skip_previous</i>Voltar</a>
		<a ng-click="save()" class="waves-effect waves-light btn"><i class="material-icons left">input</i>Salvar</a>
	   </div>
  </div>
  
</form>
   	<!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Compiled and minified JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
	
	<script type="text/javascript" src="../resources/js/angular.min.js"></script>
    <script type="text/javascript" src="../resources/js/newController.js"></script>

</body>
</html>