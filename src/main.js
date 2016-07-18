/**
 * Created by Raphael on 2016/7/16.
 */
import angular from 'angular';

import { app } from './app/app';

const $document = document;

function main() {
  angular.bootstrap($document, [app.name]);
}

$document.addEventListener('DOMContentLoaded', () => main());
