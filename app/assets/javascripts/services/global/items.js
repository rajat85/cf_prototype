function itemsFactory($http) {
  return {
  	getItems: function(callback) {
  		$http.get("/items.json").success(callback);
  	}
  };
}

itemsFactory.$inject = ['$http'];

angular.module('app').factory('items', itemsFactory);