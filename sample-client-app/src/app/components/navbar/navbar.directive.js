(function () {
    'use strict';

    angular
        .module('projects')
        .directive('gbNavbar', gbNavbar);

    /** @ngInject */
    function gbNavbar() {
        var directive = {
            restrict: 'E',
            templateUrl: 'app/components/navbar/navbar.html',
            scope: {
                creationDate: '='
            },
            controller: NavbarController,
            controllerAs: 'vm',
            bindToController: true
        };

        return directive;

        /** @ngInject */
        function NavbarController(moment, app, $state) {
            var vm = this;

            // "vm.creation" is avaible by directive option "bindToController: true"
            vm.relativeDate = moment(vm.creationDate).fromNow();
            vm.menuActive = app.nav.menuActive;
            app.nav = vm;
            vm.app = app;
            vm.toggleMenu = function() {
              app.toggleMenu(); 
            };
            
        }
    }

})();