<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html ng-app="listControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Registros</title>

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
	
	<!--Let browser know website is optimized for mobile-->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

<div class="row">
 	<div class="col s7">
		<table ng-controller="listController" class="bordered striped highlight responsive-table" data-ng-init="init()">
	     <thead>
	       <tr>
	         <th width="5%">Id</th>
	         <th width="25%">Nome</th>
	         <th width="25%">E-mail</th>
	         <th width="15%">Senha</th>
	         <th width="15%"></th>
	         <th width="15%"></th>
	       </tr>
	     </thead>
	     <tbody>
	       <tr ng-repeat="item in result | orderBy:'name'">
	                
	         <td>{{ item.id }}</td>
	         <td>{{ item.name }}</td>
	         <td>{{ item.email }}</td>
	         <td>{{ item.password }}</td>
	         <td>
	             <a ng-href="view/{{item.id}}" class="waves-effect waves-light btn"><i class="tiny material-icons left">mode_edit</i>Editar</a>
	         </td>
	         <td>
	             <a href="#" ng-click="remove(item.id)" class="waves-effect waves-light btn"><i class="tiny material-icons left">not_interested</i>Excluir</a>
	         </td>         
	       </tr>
	     </tbody>
	   </table>
   </div>
</div>

   <a href= "../" class="waves-effect waves-light btn"><i class="material-icons left">skip_previous</i>Voltar</a>
   	
   	<!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Compiled and minified JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
   	
   	<script type="text/javascript" src="../resources/js/angular.min.js"></script>
    <script type="text/javascript" src="../resources/js/listController.js"></script>
   
</body>
</html>