var express = require('express');
var router = express.Router();
var homeCtrl=require('../controllers/homeCtrl')

/* GET home page. */
router.get('/', homeCtrl.showHome);
router.get('/products', homeCtrl.showProducts);
router.get('/login', homeCtrl.showLogin);
router.post('/login', homeCtrl.postLogin);
router.get('/contact', homeCtrl.showContact);
router.get('/aboutUs', homeCtrl.showAboutUs);
router.post('/contact', homeCtrl.enquiryMail);

module.exports = router;
