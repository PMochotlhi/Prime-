(function () {
    'use strict';

    angular
        .module('projects')
        .factory('datefilter', datefilter);

    /** @ngInject */
    function datefilter($q, $http, app, auth, moment) {

        var service = {
            getNextWeekStart: getNextWeekStart,
            getNextWeekEnd: getNextWeekEnd,
            getThisWeekStart: getThisWeekStart,
            getThisWeekEnd: getThisWeekEnd,
            getLastWeekStart: getLastWeekStart,
            getLastWeekEnd: getLastWeekEnd
        };

        return service;


        function getLastWeekStart() {
            var d = new Date();
            var today = moment(new Date(d.getFullYear(), d.getMonth(), d.getDate()));
            var daystoLastMonday = 0 - (1 - today.isoWeekday()) + 7;

            var lastMonday = today.subtract('days', daystoLastMonday);

            return lastMonday;
        }

        function getLastWeekEnd() {
            var lastMonday = getLastWeekStart();
            var thisMonday = lastMonday.add('days', 6);

            return thisMonday; 
        }

        
        function getThisWeekStart() {
            return getLastWeekStart().add('days', 7);
        }

        function getThisWeekEnd() {
            return getLastWeekEnd().add('days', 7);
        }
        
        function getNextWeekStart() {
            return getLastWeekStart().add('days', 14);
        }

        function getNextWeekEnd() {
            return getLastWeekEnd().add('days', 14);
        }
        

    }
})();