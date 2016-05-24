(function () {
    'use strict';

    angular
        .module('projects')
        .run(runBlock);

    /** @ngInject */
    function runBlock($log, $rootScope, $state, app) {
        $log.info("Run started...");


        /* Add authorisation logic */

        $rootScope.app = app;
        $rootScope.$on('$stateChangeStart', function (event, toState, toParams, fromState, fromParams) {
            var requireLogin = toState.data.authenticate;
            var requirePermissions = false;

            if (toState.data && toState.data.permissions && toState.data.permissions.length > 0)
                requirePermissions = true;            
            
            if (toState.name == 'login') {

                var lastStateName = app.lastState.name;
                var lastStateParameters = app.lastState.params;
                if (lastStateName && lastStateName != 'login') {
                    $state.go(lastStateName, lastStateParameters);
                    event.preventDefault();
                    return;
                }
                $state.go("home");
                event.preventDefault();
                return;
            }
            if (requireLogin) {
                app.lastState.name = toState.name;
                app.lastState.params = toParams;

                $log.debug("Setting lastState: " + app.lastState.name);
                $log.debug("Setting lastState params: " + app.lastState.params);
            }
            
            if (requireLogin && !isLoggedIn) {
                
                $state.go("login");
                event.preventDefault();
                return; //Login don't check permisions
            }
            if (requirePermissions) {
                event.preventDefault();
                $log.debug("User does not have the required permissions");
                $state.go("unauthorised");
            }
            
            
            
        });

        $rootScope.$on('$stateChangeSuccess', function (event, toState, toParams, fromState, fromParams) {

            if (toState.data) {
                $log.info("State changed to " + toState.data.title);
                app.nav.title = toState.data.title;
                app.nav.menu = toState.data.menu;
            }

        });

        $rootScope.$on('$stateNotFound', function (event, unfoundState, fromState, fromParams) {
            $log.info('can not find state ' + unfoundState.to);
        });

        $rootScope.$on('$stateChangeError',
            function (event, toState, toParams, fromState, fromParams, error) {
                $log.info(error);
            });

        $log.info("Run ended...");
    }

})();