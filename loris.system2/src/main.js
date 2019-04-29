import Vue from "vue";
import App from "./App.vue";
import router from './router'

//COMPONENTES (rotas estão na pasta /Routes)
import CardTemporalSimple from "./components/cardTemporalSimple.vue"
Vue.component('cardTemporalSimple', CardTemporalSimple)

// INSTANCIA
new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
