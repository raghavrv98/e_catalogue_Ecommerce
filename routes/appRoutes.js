var express = require('express');
var router = express.Router();
var homeCtrl = require('../controllers/homeCtrl')

/* GET home page. */

router.get('/', homeCtrl.showHome);

router.get('/login', homeCtrl.showLogin);
router.post('/login', homeCtrl.postLogin);

router.get('/logout', homeCtrl.logout);


router.get('/aboutUs', homeCtrl.showAboutUs);

router.get('/contact', homeCtrl.showContact);
router.post('/contact-enquiry', homeCtrl.enquiryMail);

router.get('/user/:categoryId/:subCategoryId?', homeCtrl.showCategoryProductsUser);

router.post('/searchProduct/:categoryId', homeCtrl.showSearchProduct);

router.post('/addSubCategory/:categoryId', homeCtrl.addSubCategory);

router.post('/deleteSubCategory/:categoryId', homeCtrl.deleteSubCategory);

router.get('/admin-category/:categoryId/:editId?', homeCtrl.showCategoryProducts);
router.post('/admin-category-add/:categoryId/:editId?', homeCtrl.addCategoryProduct);

router.get('/admin-subCategory/:categoryId/:subCategoryId/:editId?', homeCtrl.showSubCategoryProducts);
router.post('/admin-subCategory-add/:categoryId/:subCategoryId/:editId?', homeCtrl.addSubCategoryProduct);

router.post('/admin-delete', homeCtrl.deleteProduct);
router.post('/admin-edit', homeCtrl.showEditProduct);

router.get('/notFound', homeCtrl.notFound);



module.exports = router;