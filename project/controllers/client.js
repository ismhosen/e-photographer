var express=require('express');
var image = require.main.require('./models/image-model');
var user = require.main.require('./models/user_model');
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
        password:req.session.data.password,
        type:req.session.data.type,
    }
    image.getRecommendPhotos(function(results){
        res.render('./client/client_home',{all_image:results,user_info,category:'recommend_photos'});
    })
    
    // console.log(user_info);
});

router.get('/profile', function(req, res){
    if(req.session.user_login!=true)
    {
        res.redirect('/home');
    }else{
        res.render('./client/client_profile');

    }
});

module.exports=router;