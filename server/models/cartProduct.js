const mongoose = require("mongoose");

const cartProductSchema = mongoose.Schema({
    productId:{
        type:String,
        require: true,
    },
    
    sellerId:{
        type:String,
        require: true,
    },

    buyerId:{
        type:String,
        require: true,
    },

    productName:{
        type:String,
        require: true,
        trim: true,  
    },

    productBrand:{
        type:String,
        require: true,
        trim: true,  
    },

    

    image:
      {
        type:String,
        require: true,
      },
    

    productVariant :
        {
            size:{
                type:String,
                require:true,
            },
            quantity:{
                type:Number,
                require:true,
            },
            hexColor:{
                type:String,
                require:true,
            },
            _id:{
                type:String,
                require:true,
            },
        },
    
    
        coupons :[
            {
                id:{
                    type:String,
                    require:true,
                },
                condition:{
                    type:String,
                    require:true,
                },
                value:{
                    type:String,
                    require:true,
                },
            },
        ],
        
    price :{
        type:Number,
        require: true,
    },

},
{
    timestamps:true,
}
)

const CartProduct = mongoose.model("CartProduct",cartProductSchema);

module.exports = CartProduct;