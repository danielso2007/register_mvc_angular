var editControllerApp = angular.module("editControllerApp",[]);

editControllerApp.controller("editController",function($scope, $window, $http){
	
	$scope.object = {};
	
	$scope.save = function(){
		
		var response = $http.post("../update", $scope.object);
		
		response.success(function(data, status, headers, config) {
	
		 if(data.id == 1){
			 Materialize.toast(data.msg, 4000);
			 window.location.href = "../list";
		 } else{
			 console.error(data);
			 $window.alert(data.mensagem);
		 }
		 
		});
		
		response.error(function(data, status, headers, config) {
			$window.alert(data);
		});		
	};
});