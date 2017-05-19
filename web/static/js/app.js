import "phoenix_html"
import socket from "./socket"
import Vue from "vue"
import App from "./components/app"

new Vue({
  el: '#app',
  render: h => h(App)
})
