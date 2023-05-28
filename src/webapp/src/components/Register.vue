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
  name: 'RegisterForm', 
  data() {
    return {
      phone: '',
      password: '',
      name: ''
    };
  },
  methods: {
    register() {
      // 註冊
    }
  }
};
</script>
