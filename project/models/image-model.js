var db = require('./db');

module.exports = {
    getAll: function(callback){
		var sql = "select * from image_details";
		db.getResult(sql, function(results){
			callback(results);
		});	
    },
    getImageById:function(id,callback){
        var sql='select * from image_details where id='+id;
        db.getResult(sql,function(result){
            callback(result);
        });
    },
}