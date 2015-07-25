angular
  .module \chat
  .directive do 
      * \chatRoom
      * ($root-scope, chat)->
            restrict: \E
            replace: yes
            scope: {}
            template-url: \chat-room
            controller: ($scope)->
              chat.on \room.open, ->
                  $scope.enabled = yes
              $scope.enabled = no
              $scope.close-room = ->
                $scope.enabled = no
              chat.on \close, ->
                  $scope.enabled = no
              $scope.close-chat = chat.close