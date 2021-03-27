import Vue from 'vue'
import Insta from './components/insta.vue'
import Contact from './components/contact.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'


Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#contact',
    vuetify : new Vuetify(),
    render: h => h(Contact)
  })
})

