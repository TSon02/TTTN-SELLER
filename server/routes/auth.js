const express = require('express');
const User = require('../models/user');
const { signUp, signIn, checkToken, getUser } = require('../controllers/authController');
const auth = require('../middleware/auth');

const authRouter = express.Router();

//sign up
authRouter.post('/signup',signUp);

// login
authRouter.post('/signin',signIn);

// check token
authRouter.get('/tokenIsValid',checkToken);

// get user
authRouter.get('/getUser',auth,getUser);

module.exports = authRouter;