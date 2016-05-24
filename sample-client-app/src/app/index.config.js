(function () {
    'use strict';

    angular
        .module('projects')
        .config(config);

    /** @ngInject */
    function config($logProvider, $httpProvider, toastrConfig) {
        // Enable log
        $logProvider.debugEnabled(true);
        
        $httpProvider.defaults.headers.post['Accept'] = 'application/json, text/javascript';                  
        //$httpProvider.defaults.headers.post['Content-Type'] = 'multipart/form-data; charset=utf-8';

        // Set options third-party lib
        toastrConfig.allowHtml = true;
        toastrConfig.timeOut = 3000;
        toastrConfig.positionClass = 'toast-top-right';
        toastrConfig.preventDuplicates = true;
        toastrConfig.progressBar = true;
    }

})();