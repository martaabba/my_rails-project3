var app= angular.module('shop', []);

$(document).on('ready page:load', function(){
    angular.bootstrap(document.body, ['shop'])
});

app.controller('OrdersCtrl', ['$scope', function($scope){
    //Here will be all code belonging to the controller 
   $scope.orders=[
       {id: 1, total: 24, product_id: 6, user_id: 1},
       {id: 2, total: 7, product_id: 6},
       {id: 3, total: 42, product_id: 6, user_id: 1}
       ];
    $scope.addOrder = function(){
        if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){ return; }    
        $scope.orders.push($scope.new.Order);
    $scope.deleteOrder = function(order){
        $scope.orders.splice($scope.orders.indexOf(order), 1);
        };
    };//End of app.controller
}]);