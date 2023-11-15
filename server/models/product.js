const mongoose = require("mongoose");

const productSchema = mongoose.Schema({
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

    description:{
        type:String,
        require: true,
        trim: true,  
    },

    images:[
      {
        type:String,
        require: true,
      },
    ],

    productVariants :[
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
        },
    ],

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

    category :{
        type:String,
        require: true,
    },

    userId :{
        type:String,
        require: true,
    },

    rating :{
        type:Number,
        require: true,
        default : 0.0,
    },
},
{
    timestamps:true,
}
)

const Product = mongoose.model("Product",productSchema);

module.exports = Product;