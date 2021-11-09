App.messages = App.cable.subscriptions.create( { channel: "MessagesChannel", content: 'Programming' }, {
  connected: function(res) {
    console.log(res);
  },
  disconnected: function(res) {
    console.log(res);
  },
  received: function(res) {
    $("#messages").append("<p><b>" + res.usuario + ": " + res.mensagem + "</b></p>")
  }
});