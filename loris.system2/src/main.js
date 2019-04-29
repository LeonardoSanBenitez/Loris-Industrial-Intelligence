import Vue from "vue";
import App from "./App.vue";
import router from './router'

//COMPONENTES (rotas estão na pasta /Routes)
import GraficoLinha from "./components/templateGraficoLinha.vue"
Vue.component('cardTemporalSimple', GraficoLinha)

// INSTANCIA
new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
