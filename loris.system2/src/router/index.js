import Vue from 'vue'
import Router from 'vue-router'
import Dashboard from '@/router/dashboard.vue'
import Monitoring from '@/router/monitoring.vue'
//import HelloWorld from '@/router/help.vue'

Vue.use(Router)

export default new Router({
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
    }
  ]
})
