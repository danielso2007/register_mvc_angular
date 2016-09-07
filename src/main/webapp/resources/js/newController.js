var newControllerApp = angular.module("newControllerApp",[]);

newControllerApp.controller("newController",function($scope, $window, $http){
	
	$scope.object = {};
	
	$scope.save = function(){
		var response = $http.post("save", $scope.object);
	 
		response.success(function(data, status, headers, config) {
	
		 if(data.id == 1){
			 $scope.object = {};
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
