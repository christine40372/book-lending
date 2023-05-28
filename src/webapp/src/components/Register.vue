<template>
  <div>
    <h2>註冊</h2>
    <form>
      <label for="phone">手機號碼:</label>
      <input type="text" id="phone" v-model="phone">
      <label for="password">密碼:</label>
      <input type="password" id="password" v-model="password">
      <label for="name">姓名:</label>
      <input type="text" id="name" v-model="name">
      <button @click="register">註冊</button>
    </form>
  </div>
</template>

<script>
export default {
  name: 'RegisterForm', // 修正元件名稱為多個單字格式
  data() {
    return {
      phone: '',
      password: '',
      name: ''
    };
  },
  methods: {
    register() {
      // 執行註冊相關的邏輯
    }
  }
};
</script>
