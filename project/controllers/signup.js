var express=require('express');
var user = require.main.require('./models/user_model');
var router=express.Router();

router.get('/', function(req,res){
    data={
        name:req.body.name,
        username:req.body.username,
        email:req.body.email,
        password:req.body.password,
        img:req.body.img,
    }
    res.render('./signup/signup', {data:data});
});
router.get('/updated_signup/:str',function(req,res){
    // console.log(req.params.str);
    user.checkUnique(req.params.str, function(results){
        console.log(results.length);
		if(results.length > 0){
        // console.log(req.params.str);
        // console.log("results: ",results)
			return res.render('./signup/updated_contents', {str: "1"});	
		}
	});
});
router.get('/hire', function(req,res){
    data={
        name:req.body.name,
        username:req.body.username,
        email:req.body.email,
        password:req.body.password,
        img:req.body.img,
    }
    res.render('./signup/signup_hire', {data:data});
});
router.post('/', function(req,res){
    data={
        name:req.body.name,
        username:req.body.username,
        email:req.body.email,
        password:req.body.password,
        img:req.body.img,
    }
    req.session.user={
        name:req.body.name,
        username:req.body.username,
        email:req.body.email,
        password:req.body.password,
        img:req.body.img,
    }
    // console.log('username: '+req.session.data.username);
    req.checkBody('username','Name cann\'t be empty').notEmpty();
    req.checkBody('email','Name cann\'t be empty').notEmpty();
    req.checkBody('password','Name cann\'t be empty').notEmpty();
    const err=req.validationErrors();

    if(err){
        res.render('./signup/signup',{errors:err,data:data});
    }else{
        user.insertUser(data, function(status){
            if(status){
                // res.send('success')
                res.redirect('./user');
            }else{
                res.send('don\'t');
            }    
        })
    }
});
router.post('/hire', function(req,res){
    data={
        name:req.body.name,
        username:req.body.username,
        email:req.body.email,
        password:req.body.password,
        img:req.body.img,
    }
    req.checkBody('name','Name cann\'t be empty').notEmpty();
    const err=req.validationErrors();

    if(err){
        res.render('./signup/signup_hire',{errors:err,data:data});
    }
});

module.exports=router;