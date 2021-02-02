import Vue from 'vue'
import App from '../app.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'

Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#hello',
    vuetify: new Vuetify(),
    render: h => h(App)
  })
})