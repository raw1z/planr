import "phoenix_html"
import socket from "./socket"
import Vue from "vue"
import VueRouter from 'vue-router'
import router from './router'

import App from './components/app'
import Domain from './components/domain'
import DomainList from './components/domain-list'
import DomainListItem from './components/domain-list-item'
import MenuButton from './components/menu-button'
import Task from './components/task'
import Timer from './components/timer'

Vue.use(VueRouter)

Vue.component('domain', Domain)
Vue.component('domain-list', DomainList)
Vue.component('domain-list-item', DomainListItem)
Vue.component('menu-button', MenuButton)
Vue.component('task', Task)
Vue.component('timer', Timer)

new Vue({
  router: router,
  el: '#app',
  render: h => h(App)
})
