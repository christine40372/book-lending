<template>
  <div>
    <h2>登入</h2>
    <form>
      <label for="phone">手機號碼:</label>
      <input type="text" id="phone" v-model="phone">
      <label for="password">密碼:</label>
      <input type="password" id="password" v-model="password">
      <button @click="login">登入</button>
    </form>
  </div>
</template>

<script>
export default {
  name: 'LoginForm',
  data() {
    return {
      phone: '',
      password: ''
    };
  },
  methods: {
    login() {
      // 登入
    }
  }
};
</script>
