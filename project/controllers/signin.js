var express=require('express');
var user = require.main.require('./models/user_model');
var router=express.Router();

router.get('/', function(req,res){
    res.render('./signin/signin');
});
router.post('/', function(req,res){
    var data = {
		email: req.body.email,
		password: req.body.password,
	};
	user.validate(data, function(status){
		if(status){
            req.session.email = req.body.email;
            // console.log(req.session.email);
            user.checkUnique(req.body.email,function(results){
                // var user_info=results;
                console.log("email: ",results[1]);
			    res.render('./user/user_home',{user_info:results[0]});
            });
		}else{
			res.send('invalid username/password...');
		}
	});
    console.log(req.body.email);
});

module.exports=router;