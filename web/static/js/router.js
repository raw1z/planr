import VueRouter from 'vue-router'
import Domains from './components/domains'
import Domain from './components/domain'

const routes = [
  {path: '/', redirect: '/domains'},
  {path: '/domains', component: Domains},
  {path: '/domain/:id', component: Domain, name: 'domain', props: true}
]

export default new VueRouter({routes})

