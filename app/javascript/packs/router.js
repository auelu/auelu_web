import Vue from 'vue'
import VueRouter from 'vue-router'
import Insta from "./components/insta.vue"

Vue.use(VueRouter);

export default new VueRouter({
  mode: "history",
  routes: [
    { path: "/", component: Insta },

  ]
});