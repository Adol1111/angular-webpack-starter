/**
 * Created by Raphael on 2016/7/17.
 */
import angular from 'angular';

export const app = angular.module('app', []).component('app', {
  template: `<div>{{test}}</div>`,
  controller: ($scope) => {
    $scope.test = '123123123';
  },
});
