(function () {
    'use strict';

    angular
        .module('projects')
        .directive('gbErrormessages', gbErrormessages);

    /** @ngInject */
    function gbErrormessages() {
        var directive = {
            restrict: 'E',
            templateUrl: 'app/components/errorhandler/error-messages.html',
            scope: {
                response: '='
            },
            controller: ErrorMessagesController,
            controllerAs: 'vm',
            bindToController: true
        };

        return directive;

        /** @ngInject */
        function ErrorMessagesController($scope, $element, moment, app) {
            $scope.$watch('vm.response', function(change){
                if (!$scope.vm.response || (!$scope.vm.response.responseCode)){
                    $element.addClass('hidden');
                }else {
                    $element.removeClass('hidden');
                }
            });
        }
    }

})();