const express = require('express');
const mongoose = require('mongoose');

const app = express();

const PORT = 3001;

mongoose.connect(process.env.MONGO_URI, {})
    .then(() => console.log('Connected to MongoDB'))
    .catch(err => console.error('Failed to connect to MongoDB', err));

app.get('/', (req, res) => {
    res.send('Hello, World from Docker! :)');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});