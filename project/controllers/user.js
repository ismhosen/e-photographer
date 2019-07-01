var express=require('express');
// var user = require.main.require('./models/user_model');
var router=express.Router();

router.get('/', function(req,res){
    // alert('hello');
    user_info={
        name:req.session.user.name,
        username:req.session.user.username,
        email:req.session.user.email,
        img:req.session.user.img,
    }
    res.render('./user/user_home',user_info);
});

module.exports=router;