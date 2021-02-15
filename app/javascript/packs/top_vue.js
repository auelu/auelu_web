import Vue from 'vue'
import Top from './components/top.vue'


document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#top',
    render: h => h(Top)
  })
})

