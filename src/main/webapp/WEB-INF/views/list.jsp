<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html ng-app="listControllerApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Registros</title>


<script type="text/javascript" src="../resources/js/angular.min.js"></script>
<script type="text/javascript" src="../resources/js/listController.js"></script>

</head>
<body>

	<table ng-controller="listController"  data-ng-init="init()">
     <thead>
       <tr>
         <th>Id</th>
         <th>Nome</th>
         <th>E-mail</th>
         <th>Senha</th>
         <th></th>
         <th></th>
       </tr>
     </thead>
     <tbody>
       <tr ng-repeat="item in result | orderBy:'name'">
                
         <td>{{ item.id }}</td>
         <td>{{ item.name }}</td>
         <td>{{ item.email }}</td>
         <td>{{ item.password }}</td>
         <td><a  ng-href="view/{{item.id}}" >Editar</a></td>
         <td><a href="#" ng-click="remove(item.id)">Excluir</a></td>         
       </tr>
     </tbody>
   </table>
   
   <a href= "../">Voltar</a>
   	
   
</body>
</html>