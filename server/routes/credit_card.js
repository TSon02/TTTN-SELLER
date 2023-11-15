const express = require('express');
const auth = require('../middleware/auth');
const { addNewCard, getMyCards } = require('../controllers/cardController');
const cardRouter =  express.Router();


cardRouter.post('/card',auth,addNewCard)

cardRouter.get('/card',auth,getMyCards)



module.exports = cardRouter;