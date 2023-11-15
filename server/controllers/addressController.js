const ShippingInfo = require("../models/shippingInfo");

const createShippingInfo = async (req,res) =>{
    try {
        const {level1,level2,level3,streetName,phoneNumber,receiver} = req.body;
        
        console.log(level1);
        console.log(level2);
        console.log(level3);
        console.log(streetName);
        console.log(phoneNumber);
        console.log(receiver);



        if(!level1||!level2||!level3||!streetName||!phoneNumber||!receiver){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        const shippingInfo = await ShippingInfo.create({
           userId:req.user,
           level1,
           level2,
           level3,
           streetName,
           phoneNumber,
           receiver,
        })

        console.log(shippingInfo);

        if(!shippingInfo){
            return res.json({
                success: false,
                message:"Something wrong, Can't create shippingInfo",
            })
        }


        return res.json({
            success: true,
            message:"Create shippingInfo successfully",
            shippingInfo,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}


const getShippingInfo = async (req,res) =>{
    try {
       console.log(req.user);
        const list = await ShippingInfo.find({userId:req.user});


        if(!list){
            return res.json({
                success: false,
                message:"Something wrong, Can't get shipping information",
            })
        }


        return res.json({
            success: true,
            message:"get shipping information successfully",
            list,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}


module.exports = {createShippingInfo,getShippingInfo }