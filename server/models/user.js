const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    username: {
        type : String,
        require : true,
        trim: true,
    },

    email: {
        type : String,
        require : true,
        trim: true,
        validate:{
            validator:(value)=>{
                const re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message: "Plese enter a valid email address",
        }
    },

    password: {
        type : String,
        require : true,
        
    },

    name: {
        type : String,
        require : true,
        trim: true,
    },

    address: {
        type : String,
        default : '',
    },

    type:{
        type : String,
        default: 'user',
    }
})

const User = mongoose.model('User',userSchema);

module.exports = User;