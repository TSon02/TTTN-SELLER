const mongoose = require('mongoose');

const connectDb = async ()=>{
    try {
        
      await mongoose
        .connect('mongodb://localhost:27017/mydb')
        .then(()=>{
            console.log('Connection successful ');
        })
        
    } catch (error) {
        console.log(error);
        process.exit(1);

    }
}

module.exports = connectDb; 