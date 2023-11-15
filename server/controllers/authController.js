const asyncHandler = require('express-async-handler');
const User = require('../models/user');
const bcryptjs = require('bcrypt');
const jwt = require('jsonwebtoken');

const signUp = async (req,res)=>{
    try {
        const {username,email,password,type} = req.body;

    const existingUser = await User.findOne({email});

    if(existingUser){
       console.log('User already exists');

       return res.json({
            success: false,
            message: "Account already exist !"
        });

    }    
    const hashedPassword = await bcryptjs.hash(password,8);

    let user = new User({
        username,
        email,
        "password": hashedPassword,
        type,
    });

    user = await user.save();

    res.status(200).json({
        success: true,
        message: "Created account successfully!"
    });
    } catch (e) {
        res.json({
            success: false,
            message: e.message,
        });
    }

    
};



const signIn = async (req,res)=>{
    try {
        const {email,password} = req.body;

    const user = await User.findOne({email});

    
    if(!user){

       return res.json({
            success: false,
            message: "User with this email does not exist!"
        });

    }    
    const isMatch = await bcryptjs.compare(password,user.password);

    if(!isMatch){
        return res.json({
            success: false,
            message: "Incorrect Password."
        });
    }

    const token =  jwt.sign({id:user._id,},"passwordKey");
    res.json(
        {
            success: true,
            message: "Login Successfully .",
            token,
            user,
        }
    )
   

   
    } catch (e) {
        res.json({
            success: false,
            message: e.message,
        });
    }

    
    
};

const checkToken= async(req,res)=>{
    try {
        const token = req.header('x-auth-token');

        console.log('server ',token);
        if(!token) return res.json(false);

        const verified = jwt.verify(token,'passwordKey');

        if(!verified) return res.json(false);

        const user = await User.findById(verified.id);

        if(!user) return res.json(false);

        res.json(true);
    } catch (error) {
        
    }
}

const getUser =async (req,res)=>{
    const user =await User.findById(req.user);
    
    res.json({ 
        success: true,
        message: "Success",
        token : req.token,
        user,
    })
}


module.exports = {
    signUp,
    signIn,
    checkToken,
    getUser
}