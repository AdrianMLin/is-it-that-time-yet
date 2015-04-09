console.log('this is connected!');

angular.module('timeApp', ['ui.router'])

	.directive('event', function(){
		return {
			restrict: 'E',
			templateUrl: '',
			scope: {
				eventObject: '='
			}
		}
	})

	.controller('ProfileController', function(){

	})
;

