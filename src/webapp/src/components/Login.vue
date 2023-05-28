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
  name: 'LoginForm', // 修正元件名稱為多個單字格式
  data() {
    return {
      phone: '',
      password: ''
    };
  },
  methods: {
    login() {
      // 執行登入相關的邏輯
    }
  }
};
</script>
