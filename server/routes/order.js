const express = require('express');
const auth = require('../middleware/auth');
const { createOrder, getMyOrders } = require('../controllers/orderController');
const orderRouter =  express.Router();


orderRouter.get('/order',auth)

orderRouter.post('/order',auth,createOrder)

orderRouter.get('/order',auth,getMyOrders)




module.exports = orderRouter;