var express=require('express');
var image = require.main.require('./models/image-model');
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
    image.getRecommendPhotos(function(results){
        res.render('./user/user_home',{all_image:results,user_info,category:'recommend_photos'});

    })
    
    // console.log(user_info);
});

router.get('/profile', function(req, res){
    res.render('./user/user_profile');
});
module.exports=router;