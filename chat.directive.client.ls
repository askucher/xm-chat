angular
  .module \chat
  .directive do
      * \chat
      * ->
          restrict: \E
          scope: {}
          template-url: \chat
          replace: yes
          controller: ->