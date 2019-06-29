var express=require('express');
var image = require.main.require('./models/image-model');
var router=express.Router();

router.get('/', function(req,res){
    res.render('./signin/signin');
});

module.exports=router;