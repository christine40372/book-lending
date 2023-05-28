import { createRouter, createWebHistory } from 'vue-router';
import Register from '../components/Register.vue';
import Login from '../components/Login.vue';
import BookDetails from '../components/BookDetails.vue';
import BookList from '../components/BookList.vue';
import UserProfile from '../components/UserProfile.vue';

const routes = [
  { path: '/', redirect: '/BookList' },  // 將根路徑重定向到 "/login" 路徑
  { path: '/register', component: Register },
  { path: '/login', component: Login },
  { path: '/BookDetails', component: BookDetails },
  { path: '/BookList', component: BookList },
  { path: '/UserProfile', component: UserProfile },
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
