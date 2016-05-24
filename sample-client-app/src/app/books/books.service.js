(function () {
    'use strict';

    angular
        .module('projects')
        .factory('books', books);

    /** @ngInject */
    function books($q, $http, app) {

        var service = {            
            create: create,                      
            get: get,
            list: list
        };

        return service;

        function list() {
            var defer = $q.defer();
            $http.get(app.system.apiUrl + '/Books').success(function (response) {
                defer.resolve(response);
            }).error(function (error) {
                defer.reject(app.getErrorResponse(error, "retrieving books"));
            });
            return defer.promise;
        }

        function create(book) {
            var defer = $q.defer();
            var headers = {};
            $http.post(app.system.apiUrl + '/Books', book, headers).success(function (response) {
                defer.resolve(response);
            }).error(function (error) {
                defer.reject(app.getErrorResponse(error, "creating a book"));
            });
            return defer.promise;
        }
                             
        function get(id) {
            var defer = $q.defer();
            $http.get(app.system.apiUrl + '/Books/' + id ).success(function (response) {
                defer.resolve(response);
            }).error(function (error) {
                defer.reject(app.getErrorResponse(error, "getting a book"));
            });
            return defer.promise;
        }        
    }
})();