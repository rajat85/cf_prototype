function homeController($scope, items, feedbacks) {
  var vm = this;
  var currentPage = 1;
  var pageSize = 8;
  vm.items = [];
  vm.errors = [];
  vm.success = false;
  vm.resource = {};

  vm.save = function() {
  	feedbacks.create(vm.resource).then(function(response) {
  		vm.errors = [];
  		vm.success = true;
  		vm.resource = {};
  		vm.resourceForm.$setUntouched();
  	}, function(response) {
  		vm.errors = response.data;
  		vm.success = false;
  	});
  };

  vm.itemsLimit = function() {
  	return pageSize * currentPage;
  };

  vm.hasMoreItemsToShow = function() {
  	return currentPage < (vm.items.length / pageSize);
  };

  vm.showMoreItems = function() {
    currentPage = currentPage + 1;         
  };

  items.getItems(function(data) {
  	vm.items = data;
  });
};

homeController.$inject = ['$scope', 'items', 'feedbacks'];

angular.module('app').controller("HomeController", homeController);