import Vue from 'vue'
import Router from 'vue-router'
import Dashboard from '@/router/dashboard.vue'
import Monitoring from '@/router/monitoring.vue'
import Help from '@/router/help.vue'

Vue.use(Router)

export default new Router({
  //mode: 'history', /* remove '#' da url */
  routes: [
    {
      path: '/',
      name: 'dashboard',
      component: Dashboard
    },
    {
      path: '/monitoring',
      name: 'monitoring',
      component: Monitoring
    },
    {
      path: '/help',
      name: 'help',
      component: Help
    }
  ]
})
