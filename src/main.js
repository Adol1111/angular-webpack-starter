/**
 * Created by Raphael on 2016/7/16.
 */
import angular from 'angular';

import {app} from 'app/app';

// angular.bootstrap('app', app);
function main() {
  angular.bootstrap(document, [app.name]);
}

document.addEventListener('DOMContentLoaded', () => main());