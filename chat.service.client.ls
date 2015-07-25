angular
  .module \chat
  .service do
     * \chat
     * (observ) ->
         observ (notify)-> 
             open: ->
               notify \open
             close: ->
               notify \close
             room: (id)->
                 open: ->
                    notify \room.open, id
                 close: ->
                    notify \room.close, id