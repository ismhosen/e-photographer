//decleration
var express=require('express');
var ejs=require('ejs');
var bodyParser=require('body-parser');
var expressSession=require('express-session');
var home=require('./controllers/home');

var app=express();

//configuration
app.set('view engine','ejs');

//Middleware
app.use(bodyParser.urlencoded({'extended': false}));
app.use(expressSession({secret: 'my top secret password', saveUninitialized: true, resave: false}));
app.use(express.static('./assets'));
app.use('/',home);

//routing

//server setup
app.listen(8000);