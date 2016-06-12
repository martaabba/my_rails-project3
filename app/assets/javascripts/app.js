var app= angular.module('shop', []);

app.factory('models', [function(){
    var x = {
        orders: []
    };
    return x;
}]);

$(document).on('ready page:load', function(){
    angular.bootstrap(document.body, ['shop'])
});

app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models){
    //Here will be all code belonging to the controller 
    $scope.orders = model.orders;
    
    $scope.addOrder = function(){
        if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){ return; }    
        $scope.orders.push($scope.new.Order);
        
    $scope.deleteOrder = function(order){
        $scope.orders.splice($scope.orders.indexOf(order), 1);
        };
    };//End of app.controller
}]);