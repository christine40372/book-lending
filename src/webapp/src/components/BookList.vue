<template>
  <div>
    <h2>書籍清單</h2>
    <table>
      <thead>
        <tr>
          <th>ISBN</th>
          <th>書名</th>
          <th>作者</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="book in filteredBooks" :key="book.ISBN">
          <td>{{ book.ISBN }}</td>
          <td>{{ book.Name }}</td>
          <td>{{ book.Author }}</td>
          <td>
            <button @click="viewDetails(book)">詳細資訊</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
/* eslint-disable no-unused-vars */
import axios from 'axios';

export default {
  data() {
    return {
      books: [] // 從後端獲取書籍清單的資料
    };
  },
  computed: {
    filteredBooks() {
      // 在此篩選或排序書籍清單的邏輯，例如根據特定條件過濾或排序 books
      return this.books;
    }
  },
  methods: {
    viewDetails(book) {
      // 顯示書籍詳細資訊並提供借閱按鈕的邏輯
    },
    async fetchBooks() {
      try {
        const response = await axios.get('/api/books'); // 後端 API 端點
        this.books = response.data;
      } catch (error) {
        console.error(error);
      }
    }
  },
  created() {
    this.fetchBooks();
  }
};
</script>
