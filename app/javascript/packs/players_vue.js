import Vue from 'vue'
import Players from './components/player.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'

Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#players',
    vuetify: new Vuetify(),
    render: h => h(Players)
  })
})

