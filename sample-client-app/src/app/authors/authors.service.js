(function () {
    'use strict';

    angular
        .module('projects')
        .factory('authors', authors);

    /** @ngInject */
    function authors($q, $http, app) {

        var service = {            
            create: create,                      
            get: get,
            list: list
        };

        return service;

        function list() {
           
        }

        function create(book) {
           
        }
                             
        function get(id) {
            
        }        
    }
})();