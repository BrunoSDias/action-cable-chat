App.messages = App.cable.subscriptions.create( { channel: "MessagesChannel", content: 'Programming' }, {
  connected: function(res) {
    console.log(res);
  },
  disconnected: function(res) {
    console.log(res);
  },
  received: function(res) {
    $("#messages").append("<p style='text-align: right;'><b>" + res.usuario + ":</b> " + res.mensagem + "</p>")
  }
});