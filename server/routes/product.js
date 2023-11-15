const express = require('express');
const auth = require('../middleware/auth');
const { getAllProducts, addProductToCart, getCartProducts, deleteCartProductById, deleteAllCart } = require('../controllers/productController');
const productRouter =  express.Router();


productRouter.get('/products',auth,getAllProducts)

productRouter.post('/cart',auth,addProductToCart)

productRouter.get('/cart',auth,getCartProducts)

productRouter.delete('/cart/:id',auth,deleteCartProductById)

productRouter.delete('/cart',auth,deleteAllCart)


module.exports = productRouter;