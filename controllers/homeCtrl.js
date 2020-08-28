var util = require('util')
var databaseUtils = require('./../utils/databaseUtils')
var mysql = require('mysql')
var mailUtils = require('./../utils/mail-utils')
var connection = mysql.createConnection({
    //properties
    host:'localhost',
    user:'root',
    password:'root',
    database:'ecommerce'
});
module.exports={
    showHome: (req, res, next)=>{
        res.render('index');
    },

    postLogin: (req, res, next) => {
        var email = req.body.emailId
        var password = req.body.password
        connection.query("select * from logincred", function(error, rows, fields){
            if(!!error){
                console.log('Error in Query');
            }
            else{
                if(rows[0].emailId === email && rows[0].password === password){
                    console.log('login Successful')
                    res.render('index', {'loginError': false});
                }
                else{
                    res.render('contact', { 'loginError': true});
                    console.log('loginError')
                }
            }
            });
    },

    showContact: (req, res, next)=>{
        res.render('contact', { title: 'Express' });
    },

    showAboutUs: (req, res, next)=>{
        res.render('aboutUs', { title: 'Express' });
    },

    showLogin: (req, res, next)=>{
        res.render('login', { title: 'Express' });
    },

    showProducts: (req, res, next)=>{
        res.render('products', { title: 'Express' });
    },
    
    enquiryMail: (req, res, next) => {
        var name = req.body.name
        var email = req.body.emailId
        var message = req.body.message

        var messageBody = "\n Name : " + name + "\n Email-id : " + email + "\n Message : "+ message
        mailUtils.sendMail('teamletscipher@gmail.com', "Enquiry Mail", messageBody)
        res.render('contact', {
        });
    },
}