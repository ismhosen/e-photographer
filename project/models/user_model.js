var db = require('./db');

module.exports = {
    checkUnique: function(str, callback){
        var sql='select * from user where email="'+str+'"';
        db.getResult(sql,function(results){
            callback(results);
        });
    },
    insertUser: function(user, callback){
        var sql="insert into user values ('','"+user.name+"','"+user.username+"','"+user.email+"','"+user.password+"','"+user.img+"','"+user.type+"')";
        console.log(sql);
        db.execute(sql, function(status){
        console.log(status);
			callback(status);
		});
    },
    insertFeedback: function(user, callback){
        var sql="insert into feedback values ('','"+user.email+"','"+user.feedback+"'')";
        console.log(sql);
        db.execute(sql, function(status){
        console.log(status);
			callback(status);
		});
    },
    validate: function(user, callback){
		var sql = "select * from user where email='"+user.email+"' and password='"+user.password+"'";
		db.getResult(sql, function(results){
			if(results.length > 0){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
}