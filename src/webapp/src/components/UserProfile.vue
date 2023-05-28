<template>
    <div>
      <h2>個人資訊</h2>
      <div>
        <p>手機號碼: {{ phoneNumber }}</p>
        <p>名字: {{ name }}</p>
      </div>
      <h3>借閱的書籍</h3>
      <table>
        <thead>
          <tr>
            <th>ISBN</th>
            <th>書名</th>
            <th>操作</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="book in borrowedBooks" :key="book.isbn">
            <td>{{ book.isbn }}</td>
            <td>{{ book.name }}</td>
            <td>
              <button @click="returnBook(book)">歸還</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        phoneNumber: '', // 從後端獲取使用者手機號碼的資料
        name: '', // 從後端獲取使用者名字的資料
        borrowedBooks: [] // 從後端獲取使用者借閱的書籍清單的資料
      };
    },
    methods: {
      // returnBook(book) {
      //   // 歸還書籍
      // }
    }
  };
  </script>
