var express=require('express');
var image = require.main.require('./models/image-model');
var router=express.Router();

router.get('/',function(req,res){
    image.getAll(function(results){

		if(results != null){
			res.render('./home/home', {all_image: results});			
		}else{
			res.send('Error!.. try again...');
		}
	});
});
router.get('/home',function(req,res){
    image.getAll(function(results){
		if(results != null){
			res.render('./home/home', {all_image: results});		
		}else{
			res.send('Error!.. try again...');
		}
	});
});
router.get('/image_details/:id',function(req,res){
    // res.render('./home/img_details')
    image.getImageById(req.params.id, function(result){
        console.log((result));
        if(result != null){
            image.getAll(function(results){
                // var data=r;
                res.render('./home/img_details', {image:result,all_image:results});
            })
        }else{
            res.render('/home')
        }
    });
});
router.get('/image_details/',function(req,res){
    res.redirect('/home');  
});

// router.get('/home',function(req,res){
//     image.getAll(function(results){

// 		if(results != null){
// 			res.render('./home/home', {all_image: results});			
// 		}else{
// 			res.send('Error!.. try again...');
// 		}
// 	});
// });

module.exports=router;