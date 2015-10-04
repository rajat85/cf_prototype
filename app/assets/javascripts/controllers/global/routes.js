app.config(function($stateProvider, $urlRouterProvider) {
	  // For any unmatched url
	  $urlRouterProvider.otherwise("/home");
	  //
	  // Now set up the states
	  $stateProvider
	  .state('home', {
	  	url: "/home",
	  	templateUrl: "/assets/templates/home.html",
	  	controller: "HomeController",
	  	controllerAs: "vm"
	  });
});