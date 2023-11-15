const express = require('express');
const auth = require('../middleware/auth');
const { createShippingInfo, getShippingInfo } = require('../controllers/addressController');

const shippingInfoRouter = express.Router();

//create address
shippingInfoRouter.post('/shipping',auth,createShippingInfo);

// get address
shippingInfoRouter.get('/shipping',auth,getShippingInfo);




module.exports = shippingInfoRouter;