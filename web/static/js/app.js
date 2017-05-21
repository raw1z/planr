import "phoenix_html"
import socket from "./socket"
import Vue from "vue"
import VueRouter from 'vue-router'
import router from './router'

Vue.use(VueRouter)
var RouterLink = Vue.component('router-link')

new Vue({
  components: { RouterLink },
  router: router,
  el: '#app',
  render: h => h(Vue.component('router-view'))
})
