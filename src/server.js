const express = require('express');
const app = express();
const cors = require('cors');
const router = require('./modules');
const PORT = process.env.PORT || 5000
app.use(cors());
app.use(express.json())
app.use(router);
// app.use('*/', (_, res) => res.status(404).send('Uka hayda'));
app.listen(PORT, console.log(PORT));