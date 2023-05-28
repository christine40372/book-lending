<template>
    <div>
      <h2>書籍詳細資訊</h2>
      <div>
        <p>ISBN: {{ book.isbn }}</p>
        <p>書名: {{ book.name }}</p>
        <p>作者: {{ book.author }}</p>
        <p>簡介: {{ book.introduction }}</p>
      </div>
      <div>
        <button @click="borrow">借閱</button>
        <button @click="goBack">回到書籍清單</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: ['book'],
    methods: {
      borrow() {
        // 執行借閱相關的邏輯
      },
      goBack() {
        // 返回書籍清單
      }
    }
  };
  </script>