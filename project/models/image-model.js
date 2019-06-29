var db = require('./db');

module.exports = {
    getAll: function(callback){
		var sql = "select * from image_details";
		db.getResult(sql, function(results){
			callback(results);
		});	
    },
    getRecommendPhotos: function(callback){
		var sql = "select * from recommend_photos";
		db.getResult(sql, function(results){
			callback(results);
		});	
    },
    getImageById:function(id, category, callback){
        var sql='select * from '+category+' where id='+id;
        db.getResult(sql,function(result){
            callback(result);
        });
    },
    getCategory:function(category,callback){
        var sql='select * from '+category;
        db.getResult(sql,function(result){
            callback(result);
        });
    },
}