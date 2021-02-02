import Vue from 'vue'
import App from './app.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import router from './router.js'
import Insta from "./components/insta.vue"

Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#hello',
    router,
    vuetify: new Vuetify(),
    render: h => h(App)
  })
})

