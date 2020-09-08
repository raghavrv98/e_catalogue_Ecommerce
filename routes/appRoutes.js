var express = require('express');
var router = express.Router();
var homeCtrl=require('../controllers/homeCtrl')

/* GET home page. */

router.get('/', homeCtrl.showHome);

router.get('/login', homeCtrl.showLogin);
router.get('/aboutUs', homeCtrl.showAboutUs);
router.get('/contact', homeCtrl.showContact);
router.post('/contact', homeCtrl.enquiryMail);
router.get('/user/:categoryId/:subCategoryId?', homeCtrl.showCategoryProductsUser);
router.post('/login', homeCtrl.postLogin);
router.post('/admin-delete', homeCtrl.deleteProduct);
router.post('/admin-edit', homeCtrl.showEditProduct);
router.get('/admin-category/:categoryId/:editId?', homeCtrl.showCategoryProducts);
router.get('/admin-subCategory/:categoryId/:subCategoryId/:editId?', homeCtrl.showSubCategoryProducts);


router.post('/admin-category-add/:categoryId/:editId?', homeCtrl.addCategoryProduct);
router.post('/admin-subCategory-add/:categoryId/:subCategoryId/:editId?', homeCtrl.addSubCategoryProduct);




module.exports = router;