var db = require('./db');

module.exports = {
    insertCart: function(photo_id,category,user_id, callback){
		var sql="insert into cart values ('','"+photo_id+"','"+category+"','"+user_id+"')";
        // console.log(sql);
        db.execute(sql, function(status){
        // console.log(status);
			callback(status);
		});
	},
	checkCart:function(photo_id,category,user_id, callback){
		var sql = "select * from cart where photo_id='"+photo_id+"' and category='"+category+"' and user_id= '"+user_id+"'";
		// var sql='select * from '+data.category+' where img_name="'+data.img+'"';
        // console.log(sql);
        db.execute(sql, function(result){
        // console.log(status);
			if(results.length > 0){
				callback(true);
			}else{
				callback(false);
			}
		});
	}
}