angular
  .module \chat
  .directive do 
      * \chatSearch
      * ($root-scope)->
            restrict: \E
            replace: yes
            scope: {}
            template-url: \chat-search
            controller: ($scope, chat)->
              chat
               ..on \open, ->
                  $scope.enabled = yes
               ..on \close, ->
                  $scope.enabled = no
              $scope
               ..enabled = no
               ..open = (id)->
                 chat.room(id).open!
               ..close = chat~close