(function () {
    'use strict';

    angular
        .module('projects')
        .controller('BooksListController', BooksListController);

    /** @ngInject */
    function BooksListController($scope, $state, books, app) {
        var vm = this;
        vm.wsResponse = undefined;
        
        vm.queryAPI = function () {
            app.tasks.add("retrieving.books", "retrieving books");
            books.list().then(function (wsResponse) {
                app.tasks.remove("retrieving.books");
                vm.wsResponse = wsResponse;                
            }, function (wsResponse) {
                app.tasks.remove("retrieving.books");
                vm.wsResponse = wsResponse;
            });
        };
                
        vm.init = function () {
            vm.queryAPI();
        };

        vm.edit = function (id) {
            $state.go('books/view', {
                'id': id
            });
        };
        
        vm.view = function (id) {
            $state.go("books/view", {'id': id});
        }

        vm.init();
    }
})();