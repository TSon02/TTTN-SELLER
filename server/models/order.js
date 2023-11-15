const mongoose = require("mongoose");
const Address = require("./shippingInfo");
const Card = require("./card");
const { OrderStatus, PaymentStatus } = require("../constants");
const OrderProduct = require("./orderProduct");


const orderSchema = mongoose.Schema({
    sellerId:{
        type:String,
        require: true,
    },

    buyerId:{
        type:String,
        require: true,
    },

    product:
        OrderProduct.schema,
    

    shippingInfo :Address.schema,

    paymentInfo : {
        paymentMethod : {
            type:String,
            require : true,
        },

        cardId:{
            type:String,
            require:false,
        },

        status: {
            type:String,
            require : true,
            default:PaymentStatus.Unpaid,
        }

    },

    orderStatus : {
        type:String,
        default:OrderStatus.Processing
    }

},
{
    timestamps:true,
}
)

const Order = mongoose.model("Order",orderSchema);

module.exports = Order;