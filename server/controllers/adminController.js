const { json } = require('express');
const Product = require('../models/product');
const Order = require('../models/order');
const { OrderStatus, PaymentStatus } = require('../constants');

const addProduct =async (req, res) => {
    try {
        const {productBrand,productName,description,images,price,productVariants,category,coupons} = req.body;

        if(!productBrand|| !productName || !description || !images || !price || !productVariants || !category|| !coupons){
        return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        console.log(productBrand);
        console.log(productName);
        console.log(description);
        console.log(images);
        console.log(price);
        console.log(productVariants);
        console.log(category);

        const product = await Product.create(
            {
                productBrand,
                productName,
                description,
                images,
                productVariants,
                price,
                category,
                userId:req.user,
                coupons,
           }
        )

        console.log(product);
        // let product = new Product({
        //         productName,
        //         description,
        //         images,
        //         price,
        //         quantity,
        //         category,
        //         userId:req.user,
        // })

        // product = await product.create();

        res.json({
            success: true,
            message:"Upload product successfully",
            product,
        })

    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}

const updateProduct =async (req, res) => {
    try {
        const {productBrand,productName,description,images,price,productVariants,category,coupons} = req.body;

        const id = req.params.id;

        if(!productBrand|| !productName || !description || !images || !price || !productVariants || !category|| !coupons || !id){
        return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        console.log(productBrand);
        console.log(productName);
        console.log(description);
        console.log(images);
        console.log(price);
        console.log(productVariants);
        console.log(category);
        console.log(id);

        const product = await Product.findOneAndUpdate(
            {
                "_id":id
            },
            {
                productBrand,
                productName,
                description,
                images,
                productVariants,
                price,
                category,
                coupons,
           },
           { new: true },
        )

        console.log(product);
        // let product = new Product({
        //         productName,
        //         description,
        //         images,
        //         price,
        //         quantity,
        //         category,
        //         userId:req.user,
        // })

        // product = await product.create();

        res.json({
            success: true,
            message:"Update product successfully",
            product
        })

    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}


const getProducts =async(req,res)=>{
    try {
       
     const products = await Product.find({
        userId : req.user,
     })

     res.json({
        success: true,
        message:"Get products successfully",
        products,
    });
    
    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}



const delProductById =async(req,res)=>{
    try {
       const id = req.params.id;

       const product = await Product.findByIdAndDelete(id);

       if (!product) {
        return res.json({
          success: false,
          message: 'Product not found!',
        });
      }
  
      res.json({
        success: true,
        message: 'Delete product successfully',
        product,
      });


    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}


const getOrders =async(req,res)=>{
    try {
       
     const orders = await Order.find({
        sellerId : req.user,
     })

     if(!orders){
        return res.json({
            success: false,
            message:"Something wrong, Can't get list order",
        })
    }

     res.json({
        success: true,
        message:"Get orders successfully",
        orders,
    });
    
    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}

const updateOrderStatus =async(req,res)=>{
    try {

        const {id,status} = req.body

        if(!id || !status){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

       
     const order = await Order.find({
        _id : id,
     })


     if(!order){
        return res.json({
            success: false,
            message:"Something wrong, Can't find order",
        })
     }


    if(status != OrderStatus.Delivered){
        console.log('!= delivered');
        const update = await Order.findByIdAndUpdate(id,{
            orderStatus: status,
         })
    
         if(!update){
            return res.json({
                success: false,
                message:"Something wrong, Can't update order status",
            })
         }
    
         res.json({
            success: true,
            message:"update order status successfully",
        });
    }else{
        console.log('== delivered');

        const update = await Order.findOneAndUpdate(
            {
                _id: id,
            },

            { $set: {
                 "paymentInfo.status": PaymentStatus.Paid,
                 orderStatus : status,
        } },

            { new: true },
        )

        if(!update){
            return res.json({
                success: false,
                message:"Something wrong, Can't update order status",
            })
         }
    
         res.json({
            success: true,
            message:"update order status successfully",
            update,
        });
    }
    
    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}





module.exports = {
    addProduct,
    getProducts,
    delProductById,
    getOrders,
    updateOrderStatus,
    updateProduct
}