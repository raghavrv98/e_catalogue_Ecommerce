var express = require('express')
var mysql = require('mysql')
var app = express();

var connection = mysql.createConnection({
	//properties
	host:'localhost',
	user:'root',
	password:'root',
	database:'ecommerce'
});

connection.connect(function(error){
	if(!!error){
		console.log('Error');
	}
	else{
		console.log('connected');
	}
	});

	app.get('/', function(req,resp){
		connection.query("select * from logincred", function(error, rows, fields){
if(!!error){
	console.log('Error in Query');
}
else{
	console.log('successful query');
}
});
})

app.listen(3001);