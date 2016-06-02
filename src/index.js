import Vue from 'vue'
import App from './components/App.vue'
import Home from './components/Home.vue'
import SecretQuote from './components/SecretQuote.vue'
import Signup from './components/Signup.vue'
import Login from './components/Login.vue'
import Detail from './components/Detail.vue'
import VueRouter from 'vue-router'
import VueResource from 'vue-resource'
Vue.use(VueResource)
Vue.use(VueRouter)
import auth from './auth'

Vue.http.headers.common['Authorization'] = 'Bearer ' + localStorage.getItem('id_token');
Vue.http.headers.common['Access-Control-Allow-Origin'] = '*';
Vue.http.headers.common['Access-Control-Allow-Methods'] = 'GET, POST, OPTIONS';
Vue.http.headers.common['Access-Control-Allow-Headers'] = 'Content-Type';
Vue.http.headers.common['Access-Control-Request-Headers'] = 'X-Requested-With, accept, content-type';

// Check the user's auth status when the app starts
auth.checkAuth()

export var router = new VueRouter()

router.map({
  '/home': {
    component: Home
  },
  'secretquote': {
    component: SecretQuote
  },
  '/login': {
    component: Login
  },
  '/signup': {
    component: Signup
  },
  '/detail':{
    component: Detail
  }
})

router.redirect({
  '*': '/home'
})

router.start(App, '#app')

