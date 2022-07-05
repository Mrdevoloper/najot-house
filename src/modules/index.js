const express = require('express');
const router = express.Router();

const company = require('./company/company')
const complex = require('./complex/complex')
const rooms = require('./rooms/rooms')
const BANK = require('./bank/bank')




router
     .get('/company', company.GET)
     .get('/complex/:complexId', complex.GET)
     .get('/rooms/:id', rooms.GET)
     .get('/bankroom/:roomINFOID', BANK.GET)
     .get('/bankprice/:bank_limit_price/:bank_month', BANK.BANK_GET)
     .post('/company', company.POST)
     .post('/complex', complex.POST_COMPLEX)
     .post('/rooms', rooms.POST)
     .post('/bank', BANK.POST)

     
module.exports = router;