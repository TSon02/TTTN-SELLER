const { PaymentStatus } = require("../constants");
const CartProduct = require("../models/cartProduct");
const Order = require("../models/order");
const Product = require("../models/product")


const getAllProducts = async (req, res) => {

    try {
        const products =await Product.find({});

        res.json({
            success: true,
            message:"Get all products successfully",
            products
        });

    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}

const createOrder = async (req,res) =>{
    try {
        const {products,shippingInfo,paymentInfo} = req.body;
        
        console.log(products);
        console.log(shippingInfo);
        console.log(paymentInfo);



        if(!products||!shippingInfo||!paymentInfo){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        let orders = [];

       for (let i = 0; i < products.length; i++) {
        let product = await Product.findById(products[i].productId)
        // console.log(product);

        let result = product["productVariants"].find(item => item._id == products[i]['productVariant']._id)

        console.log(products[i]["productVariant"]["quantity"]);



        if(result["quantity"] >= products[i]["productVariant"]["quantity"] ){
            // console.log(true);
            // console.log(product._id);
            // console.log(result._id);

            // console.log(result["quantity"]);
            // console.log(products[i]["productVariant"]["quantity"]);

            const newQtt = result["quantity"] - products[i]["productVariant"]["quantity"]

            // console.log(newQtt);
           await Product.findOneAndUpdate(
                    {
                        _id: product._id,
                        "productVariants._id":result._id
                    },

                    { $set: { "productVariants.$.quantity": newQtt } },

                    { new: true },
                )

                const order = await Order.create({
                    sellerId:products[i]["sellerId"],
                    buyerId:req.user,
                    product:products[i],
                    shippingInfo,
                    paymentInfo:{
                        paymentMethod:paymentInfo.paymentMethod,
                        status: paymentInfo.paymentMethod =='card' ? PaymentStatus.Paid : PaymentStatus.Unpaid,
                        cardId:paymentInfo.cardId
                    },
                })

                // console.log(order);

                orders.push(order);

              
        }else{
            return res.json({
                success: false,
                message:"Unable to place the order. Insufficient quantity available.",
            })
        }

       }

       if(orders.length < 0){
        return res.json({
            success: false,
            message:"Failed to place the order. Please try again later.",
        })
       }
       
       console.log(orders);

       return res.json({
        success: true,
        message:"Your order has been placed successfully.",
        orders,
    })

      

     

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

// user

const getMyOrders = async (req,res) =>{
    try {
        const orders = await Order.find({
            buyerId:req.user,
        });

        console.log(orders.length);

        if(!orders){
            return res.json({
                success: false,
                message:"Something wrong, Can't get my orders",
            })
        }



        return res.json({
            success: true,
            message:"Get my orders successfully",
            orders,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}


module.exports = { getAllProducts,createOrder,getMyOrders}