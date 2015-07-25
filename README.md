# Chat component


## How to use

```Javascript
//include angularjs module
angular.module('app', ['chat'])
```

```Html
<!--add directive into your html code -->
<div>
...
   <chat />
...
</div>
```

```Javascript
//manage it through service
angular
  .module('app')
  .controller('YourCtrl', function(chat) {
  
     //open chat with user list
     chat.open();
     
     var userId = 12
     
     chat.room(userId).open();
     
     //close chat and chat-room
     chat.close();
  })
```