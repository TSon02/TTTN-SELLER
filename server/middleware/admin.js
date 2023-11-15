const jwt = require('jsonwebtoken');
const User = require('../models/user');

const admin = async(req,res,next)=>{
    try {
        const token = req.header('x-auth-token');
    
        console.log('auth token saSASAsaa');
        if(!token){
            return res.json({ 
                success: false,
                message: "No auth token,access denied",});
    
    
        }

    
        const verified = jwt.verify(token,'passwordKey');
    
            if(!verified){
                return res.json({
                    success: false,
                    message: "Token verification failed, authentication denied",
                })
            }
    
            const user = await User.findById(verified.id);

            if(user.type == 'user'){
                return res.json({
                    success: false,
                    message:"You are not an admin",
                })
            }


            req.user = verified.id;
    
            req.token = token;
    
            next();
        } catch (error) {
            res.json({ 
                success: false,
                message: error.message,});
        }
}

module.exports = admin;