(function () {
    'use strict';

    angular
        .module('projects')
        .controller('BooksViewController', BooksViewController);

    /** @ngInject */
    function BooksViewController($log, $state, $stateParams, app, books) {
        var vm = this;       
        vm.bookId = $stateParams.id;       
        vm.wsResponse = undefined;

        vm.goBack = function () {        
                $state.go('books/list');                
            }
            
        vm.init = function () {
             books.get(vm.bookId).then(function (wsResponse) {
                vm.wsResponse = wsResponse;
                if (vm.wsResponse == null){
                    vm.wsResponse = "An error has occurred";
                }                                
            }, function (wsResponse) {
                vm.wsResponse = wsResponse;
            });
            
        };  
        
        vm.init();     
    }
})();