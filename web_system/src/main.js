import Vue from "vue";
import App from "./App.vue";
import router from './router'

//COMPONENTES (rotas estão na pasta /Routes)
import CardTemporalSimple from "./components/cardTemporalSimple.vue"
Vue.component('cardTemporalSimple', CardTemporalSimple)

import CardPie from "./components/cardPie.vue"
Vue.component('cardPie', CardPie)

import CardTable from "./components/cardTable.vue"
Vue.component('cardTable', CardTable)

import CardGauge from "./components/cardGauge.vue"
Vue.component('cardGauge', CardGauge)

import CardTemporalWindow from "./components/cardTemporalWindow.vue"
Vue.component('cardTemporalWindow', CardTemporalWindow)

// INSTANCIA
new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
