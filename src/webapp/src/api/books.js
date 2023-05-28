import axios from 'axios';

const API_BASE_URL = 'http://localhost:8080/api';

export function getUser(userId) {
  return axios.get(`${API_BASE_URL}/users/${userId}`);
}
