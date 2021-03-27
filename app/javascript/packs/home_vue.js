import Vue from 'vue'
import Insta from './components/insta.vue'
import Top from './components/top.vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'


Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#instagram',
    vuetify : new Vuetify(),
    render: h => h(Insta)
  })
  new Vue({
    el: '#top',
    vuetify : new Vuetify(),
    render: h => h(Top)
  })
})

