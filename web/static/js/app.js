import "phoenix_html"
import socket from "./socket"
import Vue from "vue"
import VueRouter from 'vue-router'
import router from './router'

import Domain from './components/domain'
import DomainList from './components/domain-list'
import MenuButton from './components/menu-button'
import Task from './components/task'
import Timer from './components/timer'

Vue.component('domain', Domain)
Vue.component('domain-list', DomainList)
Vue.component('menu-button', MenuButton)
Vue.component('task', Task)
Vue.component('timer', Timer)

Vue.use(VueRouter)
var RouterLink = Vue.component('router-link')

new Vue({
  components: {
    RouterLink,
  },
  router: router,
  el: '#app',
  render: h => h(Vue.component('router-view'))
})
