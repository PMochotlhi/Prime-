(function () {
    'use strict';

    angular
        .module('projects')
        .service('app', app);

    /** @ngInject */
    function app($log) {
        var vm = this;
        
        
        /* Show current view title and menu item */
        vm.nav = {
            title: "",
            menu: "",
            menuActive : true
        };
        vm.toggleMenu = function(){
            vm.nav.menuActive = !vm.nav.menuActive;
        };
        
        /* Show progress and log events*/
        vm.tasks = function(){
            var tm = {};
            tm.list = {};
            tm.length = 0;
            tm.add = function(name, description){
                $log.info("Started: " + name + " > "+ description);
                tm.list[name] = description;
                tm.length = Object.keys(tm.list).length;
            };
            tm.remove = function(name){
                $log.info("Ended: " + name);
                delete tm.list[name];
                tm.length = Object.keys(tm.list).length;
            };
            
            tm.clear = function() {
                tm.list = {};
                tm.length = 0;
            };
            return tm;
        }();

        /* Application configuration Settings*/
        vm.system = {
            baserUrl: 'http://localhost:60410',
            apiUrl: 'http://localhost:60410/api',
            apiTimeout: 120000, // 1000 = 1 second
            notificationInterval: 1000,
            version: '0.0.1',
            name: 'Sample App'            
        };
        
        
        
        /* Application Last State */
        vm.lastState = {
            name: undefined,
            params: undefined
        };
        
        
        /* Return a generic message when a connection can't be made to the server */
        vm.getErrorResponse = function(error, action){
            $log.debug("Error occurred " + action);
            var response = {};
            response.responseCode = -1;
            response.responseMessages = [];
            response.responseMessages.push({
                "code": 0,
                "category": 3,
                "message": "Unknown error occurred, please check that you are connected to the internet and/or try again later."
            });
            return response;
        };        
    }
})();