import axios from 'axios';

const Api = axios.create(
    {
        baseURL: "http://143.244.147.161:8001/index.php"
    }
);

export default Api;