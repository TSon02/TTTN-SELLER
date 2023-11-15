const express = require('express');

// IMPORT FROM OTHER FILES
const authRouter = require('./routes/auth');
const connectDb = require('./config/dbConnection');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const cardRouter = require('./routes/credit_card');
const shippingInfoRouter = require('./routes/shipping_info');
const orderRouter = require('./routes/order');


// INIT
const PORT = 8081;

const app = express();

// middleware
app.use(express.json());

app.get('/', (req, res) => {
    res.status(200).json({message:'OK'});
})

app.use('/api/',authRouter);

app.use('/api/admin/',adminRouter);

app.use('/api/',productRouter);

app.use('/api/',shippingInfoRouter);

app.use('/api/',cardRouter);

app.use('/api/',orderRouter);





// CONNECT MONGODB

connectDb();

// CREATE SERVER    
app.listen(PORT,()=>{
    console.log(`listening on port ${PORT}`);
})