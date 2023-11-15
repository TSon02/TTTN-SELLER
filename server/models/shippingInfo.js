const mongoose = require("mongoose");

const shippingInfoSchema = mongoose.Schema({
    userId :{
        type:String,
        require: true,
    },

    level1 :{
        type:String,
        require: true,
    },

    level2 :{
        type:String,
        require: true,
    },

    level3 :{
        type:String,
        require: true,
    },

    streetName :{
        type:String,
        require: true,
    },

    phoneNumber :{
        type:String,
        require: true,
    },

    receiver :{
        type:String,
        require: true,
    },

},
{
    timestamps:true,
}
)

const ShippingInfo = mongoose.model("ShippingInfo",shippingInfoSchema);

module.exports = ShippingInfo;