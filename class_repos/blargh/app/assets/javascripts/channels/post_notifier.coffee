App.post_notifier = App.cable.subscriptions.create "PostNotifierChannel",
  connected: ->
    console.log "Connected" 
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log "disconnected"
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log "heard something", data
    # Called when there's incoming data on the websocket for this channel

  new: ->
    console.log("New was called")
    @perform 'new'
