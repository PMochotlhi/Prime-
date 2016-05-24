(function () {
    'use strict';

    angular
        .module('projects')
        .factory('search', search);

    /** @ngInject */
    function search($q, $http, app, auth) {

        var service = {
            list: list
        };

        return service;

        function list() {
            var defer = $q.defer();
            $http.get(app.system.apiUrl + '/Inbox/List', auth.getHead()).success(function (response) {
                defer.resolve(response);
            }).error(function (error) {
                defer.reject(app.getErrorResponse(error, "retrieving users inbox items"));
            });
            return defer.promise;
        }

        

    }
})();