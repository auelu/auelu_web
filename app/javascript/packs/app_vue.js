import Vue from 'vue'
import App from '../app.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import VueRouter from 'vue-router'
import Insta from "./components/insta.vue"

Vue.use(Vuetify)
Vue.use(VueRouter)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#hello',
    router,
    vuetify: new Vuetify(),
    render: h => h(App)
  })
})

const router = new VueRouter({
  routes: [
    { path: '/',
      component: Insta  },

  ]
})