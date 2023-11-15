const mongoose = require('mongoose');

const cardSchema = mongoose.Schema({
    userId: {
        type : String,
        require : true,
        trim: true,
    },

    bank: {
        type : String,
        require : true,
        trim: true,
    },

    cardNumber: {
        type : String,
        require : true,
        trim: true,
    },

    fullName: {
        type : String,
        require : true,
        trim: true,
    },

    expiredTime: {
        type : String,
        require : true,
        trim: true,
    },

    cvv: {
        type : String,
        require : true,
        trim: true,
    },

   
    
},
    {
        timestamps:true,
    }
)

const Card = mongoose.model('Card',cardSchema);

module.exports = Card;