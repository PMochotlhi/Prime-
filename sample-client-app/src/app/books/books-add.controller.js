(function () {
    'use strict';

    angular
        .module('projects')
        .controller('BooksAddController', BooksAddController);

    /** @ngInject */
    function BooksAddController($log, $state, $stateParams, app, books) {
        var vm = this;              
        vm.wsResponse = undefined;

        vm.goBack = function () {        
                $state.go('books/list');                
            }
            
        vm.save = function (isValid) {
            if (!isValid) return;
            books.create(vm.wsRequest).then(function (wsResponse) {
                    app.tasks.remove("creating.book");
                    vm.wsResponse = wsResponse;
                    app.tasks.remove("creating.book");
                    if (wsResponse >  0) {                        
                        vm.goBack();
                    }
                    else{
                        vm.wsResponse = "An error has occurred.";
                    }
                   
                }, function (wsResponse) {
                    app.tasks.remove("creating.book");                   
                    vm.wsResponse = wsResponse;
                });
        };       
    }
})();