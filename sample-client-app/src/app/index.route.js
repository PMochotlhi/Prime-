(function () {
    'use strict';

    angular
        .module('projects')
        .config(routerConfig);

    /** @ngInject */
    function routerConfig($locationProvider, $stateProvider, $urlRouterProvider) {
        var defaultViewModel = 'vm';

        $urlRouterProvider
            .otherwise(function ($injector) {
                var $state = $injector.get("$state");
                //$state.go("home");
            });

        $locationProvider.html5Mode({
            enabled: true,
            requireBase: false
        });

        function addState(group, name, options, stateUrl) {

            var groupL = group.toLowerCase();
            var nameL = name.toLocaleLowerCase();
            var url = '/' + groupL + '/' + nameL;
            if (options && options.isEdit) {
                url += '/{id:int}';
            }
            var stateKey = groupL + '/' + nameL;
            if (stateUrl) {
                stateKey = stateUrl;
                url = '/' + stateUrl;
            }


            $stateProvider.state(stateKey, {
                url: url,
                templateUrl: 'app/' + groupL + '/' + groupL + '-' + nameL + '.html',
                controller: group + name + 'Controller',
                controllerAs: 'vm',
                data: options
            });
        }       

        $stateProvider.state('books/list', {
            url: '/books/list',
            templateUrl: 'app/books/books-list.html',
            controller: 'BooksListController',
            controllerAs: defaultViewModel,
            data: {
                title: 'List books',
                menu: 'books',
                authenticate: false                
            }
        });
        
         $stateProvider.state('books/add', {
            url: '/books/add',
            templateUrl: 'app/books/books-add.html',
            controller: 'BooksAddController',
            controllerAs: defaultViewModel,
            data: {
                title: 'Add book',
                menu: 'books',
                authenticate: false                
            }
        });
        
        $stateProvider.state('books/view', {
            url: '/books/view/{id:int}',
            templateUrl: 'app/books/books-view.html',
            controller: 'BooksViewController',
            controllerAs: defaultViewModel,
            data: {
                title: 'View Book',
                menu: 'books',
                authenticate: false               
            }
        });
       
        $stateProvider.state('authors/list', {
            url: '/authors/list',
            templateUrl: 'app/authors/authors-list.html',
            controller: 'AuthorsListController',
            controllerAs: defaultViewModel,
            data: {
                title: 'List authors',
                menu: 'authors',
                authenticate: false                
            }
        });
       
        $urlRouterProvider.otherwise('/');
    }

})();