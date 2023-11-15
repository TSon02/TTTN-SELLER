const CartProduct = require("../models/cartProduct");
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

const addProductToCart = async (req,res) =>{
    try {
        const {productId,sellerId,productBrand,productName,price,productVariant,image,coupons} = req.body;
        
        console.log(productId);
        console.log(sellerId);
        console.log(productBrand);
        console.log(productName);
        console.log(price);
        console.log(productVariant);
        console.log(image);



        if(!productId||!sellerId||!productBrand||!productName||!price||!productVariant||!image||!coupons){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        const product = await CartProduct.create({
            productId,
            sellerId,
            buyerId:req.user,
            productBrand,
            productName,
            price,
            productVariant,
            coupons,
            image,
        })

        console.log(product);

        if(!product){
            return res.json({
                success: false,
                message:"Something wrong, Can't add product to cart",
            })
        }


        return res.json({
            success: true,
            message:"Add product to cart successfully",
            product:product,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

// user

const getCartProducts = async (req,res) =>{
    try {
        

        const products = await CartProduct.find({
            buyerId:req.user,
        });

        console.log(products.length);

        if(!products){
            return res.json({
                success: false,
                message:"Something wrong, Can't get cart products",
            })
        }



        return res.json({
            success: true,
            message:"Get cart products successfully",
            products,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}



const deleteCartProductById = async (req,res) =>{
    try {
        const id = req.params.id;

        console.log(id);
        const response = await CartProduct.findByIdAndDelete(id)


        console.log(response);

        if(!response){
            return res.json({
                success: false,
                message:"Failed to remove the product from the cart. Please try again later.",
            })
        }



        return res.json({
            success: true,
            message:"The product has been successfully removed from the cart.",
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

const deleteAllCart = async (req,res) =>{
    try {
        const id = req.user;

        console.log(id);
        const response = await CartProduct.deleteMany({
            buyerId:id,
        })

        
        console.log(response);

        if(response.deletedCount == 0){
            return res.json({
                success: false,
                message:"Failed to remove the product from the cart. Please try again later.",
            })
        }



        return res.json({
            success: true,
            message:"The products has been successfully removed from the cart.",
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}


module.exports = { getAllProducts,addProductToCart,getCartProducts,deleteCartProductById,deleteAllCart}