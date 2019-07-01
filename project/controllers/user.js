var express=require('express');
// var user = require.main.require('./models/user_model');
var router=express.Router();

router.get('/', function(req,res){
    // alert('hello');
    if(req.session.user_login!=true)
    {
        res.redirect('./home');
    }
    user_info={
        name:req.session.data.name,
        username:req.session.data.username,
        email:req.session.data.email,
        img:req.session.data.img,
    }
    
    console.log(user_info);
    res.render('./user/user_home',user_info);
});

module.exports=router;