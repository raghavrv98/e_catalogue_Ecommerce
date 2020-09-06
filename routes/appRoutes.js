var express = require('express');
var router = express.Router();
var homeCtrl=require('../controllers/homeCtrl')

/* GET home page. */

router.get('/', homeCtrl.showHome);


router.get('/user/:category/:subCategory', homeCtrl.showSubCategoryProductsUser);
router.get('/user/:category', homeCtrl.showCategoryProductsUser);

router.get('/login', homeCtrl.showLogin);
router.post('/login', homeCtrl.postLogin);

router.get('/aboutUs', homeCtrl.showAboutUs);

router.get('/contact', homeCtrl.showContact);
router.post('/contact', homeCtrl.enquiryMail);

router.get('/admin-category/:category/:editId?', homeCtrl.showCategoryProducts);
router.post('/admin-category-add/:category?/:editId?', homeCtrl.addCategoryProduct);

router.get('/admin-subCategory/:category/:subCategory/:editId?', homeCtrl.showSubCategoryProducts);
router.post('/admin-subCategory-add/:category?/:subCategory?/:editId?', homeCtrl.addSubCategoryProduct);

router.post('/admin-delete', homeCtrl.deleteProduct);
router.post('/admin-edit', homeCtrl.showEditProduct);



module.exports = router;