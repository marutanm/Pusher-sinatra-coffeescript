Pusher.log = (message) ->
  window.console.log(message)

pusher = new Pusher('7d7f116cc23ec67b4cd5');
channel = pusher.subscribe('test_channel');
channel.bind('my_event', (data) -> alert('A thing was created: ' + data.name))
