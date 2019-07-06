var express=require('express');
var image = require.main.require('./models/image-model');
var user = require.main.require('./models/user_model');
var functionality = require.main.require('./models/functionality_model');
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
router.get('/update_client/:photo_id/:category/:user_id', function(req, res){
    functionality.checkCart(req.params.photo_id,req.params.category,req.params.user_id, function(results){
        if(results.length>0){
            return res.send('already_added');
        }else{
            functionality.insertCart(req.params.photo_id,req.params.category,req.params.user_id, function(status){
                if(status){
                    res.render('./client/updated_contents');
                }else{
                    res.send("don\'t");
                }
                
            })
        }
    });
    
    
});

module.exports=router;