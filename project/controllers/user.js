var express=require('express');
var image = require.main.require('./models/image-model');
var user = require.main.require('./models/user_model');
var router=express.Router();

router.get('/', function(req,res){
    // alert('hello');
    if(req.session.user_login!=true)
    {
        res.redirect('./home');
    }else{
        user_info={
            name:req.session.data.name,
            username:req.session.data.username,
            email:req.session.data.email,
            img:req.session.data.img,
            password:req.session.data.password,
            tagline:req.session.data.tagline,
            facebook:req.session.data.facebook,
            instagram:req.session.data.instagram,
            type:req.session.data.type,
        }
        console.log(user_info);
        image.getRecommendPhotos(function(results){
            if(user_info.type=="photographer"){
                res.render('./user/user_home',{all_image:results,user_info,category:'recommend_photos'});
            }
            else if(user_info.type=="client"){
                // res.render('./user/client_home',{all_image:results,user_info,category:'recommend_photos'});
                res.redirect('./client')
            }
            
        })
    }
    
    
    // console.log(user_info);
});
router.post('/',function(req,res){	
    // return res.render('./user/ajax_edit');
    console.log(req.body);
    console.log("id",user_info.email);
    var data={
        category:req.body.category,
        img:req.body.img,
        description:req.body.description,
    }
    user.getId(user_info.email, function(results){
        // console.log(results[0].id);
        image.insertPhotosCategory(results[0].id,data, function(status){

        })
    });
});

router.get('/profile', function(req, res){
    if(req.session.user_login!=true)
    {
        res.redirect('/home');
    }else{
        res.render('./user/user_profile');

    }
});
router.get('/ajax_edit/',function(req,res){	
    return res.render('./user/ajax_edit');	
});
router.get('/ajax_photos/',function(req,res){	
    return res.render('./user/ajax_photos');	
});
router.get('/ajax_overview/',function(req,res){	
    return res.render('./user/ajax_overview');	
});
router.get('/ajax_events/',function(req,res){	
    return res.render('./user/ajax_events');	
});
router.get('/ajax_projects/',function(req,res){	
    return res.render('./user/ajax_projects');	
});

router.post('/ajax_update/',function(req,res){	
    // return res.render('./user/ajax_edit');
    
    console.log('controller hello');
    console.log(req.body.email);
    // alert('hello');
});
router.post('/feedback/',function(req,res){	
    console.log('feedback',req.body);
    var data={
        email:req.body.email,
        feedback:req.body.feedback
    }
    user.insertFeedback(data, function(status){
        if(status){
            if(req.session.user_login==true)
            {
                res.redirect('/user');
            }else{
                res.redirect('../home');
            }
        }else{
            res.send('don\'t');
        }    
    })
    
});

module.exports=router;