var express=require('express');
var router=express.Router();

router.get('/',function(req,res){
    req.session.user_login=false;
    res.redirect('./home');

});

module.exports=router;