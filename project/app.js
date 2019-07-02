var express         =   require('express');
var ejs             =   require('ejs');
var bodyParser      =   require('body-parser');
var exValidator     =   require('express-validator');
var expressSession  =   require('express-session');
var home            =   require('./controllers/home');
var signin          =   require('./controllers/signin');
var signup          =   require('./controllers/signup');
var signout          =   require('./controllers/signout');
var user            =   require('./controllers/user');
var client            =   require('./controllers/client');

var app=express();

//configuration
app.set('view engine','ejs');

//Middleware
app.use(bodyParser.urlencoded({'extended': false}));
app.use(exValidator());
app.use(expressSession({secret: 'my top secret password', saveUninitialized: true, resave: false}));
app.use(express.static('./assets'));
app.use('/',home);
app.use('/signin',signin);
app.use('/signup',signup);
app.use('/signout',signout);
app.use('/user',user);
app.use('/client',client);

//routing

//server setup
app.listen(8000);