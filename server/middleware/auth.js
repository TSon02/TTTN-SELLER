const jwt = require('jsonwebtoken');

const auth = (req,res,next)=>{
    try {
    const token = req.header('x-auth-token');

    console.log('auth token',token);
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

        req.user = verified.id;

        req.token = token;

        next();
    } catch (error) {
        res.json({ 
            success: false,
            message: error.message,});
    }
}

module.exports = auth