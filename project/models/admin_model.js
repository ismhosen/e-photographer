var db = require('./db');

module.exports = {
    getAll: function(callback){
		var sql = "select * from user";
		db.getResult(sql, function(results){
			callback(results);
		});
	},
	activate: function(id, callback){
		var sql = "update user set active='1' where id="+id;
		db.execute(sql, function(status){
			callback(status);
		});
	},
	deactivate: function(id, callback){
		var sql = "update user set active='0' where id="+id;
		db.execute(sql, function(status){
			callback(status);
		});
	},
	delete: function(id, callback){
		var sql = "delete from user where id="+id;
		db.execute(sql, function(status){
			callback(status);
		});
	},
	search: function(data, callback){
		//console.log('New'+data.id+' '+data.username);
		var sql = "select * from user where id like '%"+data.id+"%' or username like '%"+data.username+"%'";
		db.getResult(sql, function(results){
			callback(results);
		});
	}
}

