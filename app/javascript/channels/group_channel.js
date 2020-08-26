import consumer from "./consumer"

consumer.subscriptions.create("GroupChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const communitys = document.getElementById('messages');
    messages.innerHTML += date
    // Called when there's incoming data on the websocket for this channel
  },

  speak: function(content) {
    return this.perform('speak', {community: 'content'});
  }
});

document.addEventListener('DOMContentLoaded', function() {
  const input = document.getElementById('chat-input')
  const button = document.getElementById('button')
  button.addEventListener('click', function() {
    const content = input.value
    App.group.speak(content)
    input.value = ''
  })
})