(function() {
  'use strict';

  angular
    .module('projects')
    .directive('gbMenu', gbMenu);

  /** @ngInject */
  function gbMenu() {
    var directive = {
      restrict: 'E',
      templateUrl: 'app/components/menu/menu.html',
      scope: {
          creationDate: '='
      },
      controller: MenuController,
      controllerAs: 'vm',
      bindToController: true
    };

    return directive;

    /** @ngInject */
    function MenuController(moment, app) {
      var vm = this;
      vm.nav = app.nav;
      
    }
  }

})();
