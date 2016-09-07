var listControllerApp = angular.module("listControllerApp",[]);

listControllerApp.controller("listController",function($scope, $window, $http){
	
	 $scope.result = new Array();
	 
	 
	 $scope.init = function(){
		 var response = $http.get("listAll");
		 response.success(function(data, status, headers, config) {
			 $scope.result = data;
		 });
		 
		 response.error(function(data, status, headers, config) {
			 $window.alert(data);
		 });
	 };
	 
	 $scope.remove = function(id){
		 if($window.confirm("Deseja realmente excluir esse usuário?")){
			 var response = $http.delete("remove/" + id);
			 
			 response.success(function(data, status, headers, config) {
				 $scope.init();
			 });
			 
			 response.error(function(data, status, headers, config) {
				 console.error(data);
				 $window.alert(data);
			 });
		 }
	 };
});