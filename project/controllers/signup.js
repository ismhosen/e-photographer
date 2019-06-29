var express=require('express');
var image = require.main.require('./models/image-model');
var router=express.Router();

router.get('/', function(req,res){
    res.render('./signup/signup');
});
router.get('/hire', function(req,res){
    res.render('./signup/signup_hire');
});
module.exports=router;