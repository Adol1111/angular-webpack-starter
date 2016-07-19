/**
 * Created by Raphael on 2016/7/17.
 */
class App {
  constructor($document) {
    this.$document = $document[0];
    this.changeTitle();
  }

  changeTitle() {
    this.$document.title = Math.random();
  }
}

export const app = angular.module('app', []).component('app', {
  template: `<button ng-click="ctrl.changeTitle()">修改title</button>`,
  controller: App,
  controllerAs: 'ctrl',
});
