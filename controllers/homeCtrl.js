var mysql = require('mysql')
var mailUtils = require('./../utils/mail-utils')

var message = '';
var sub_category_object = {}
var admin = false

module.exports = {

    showHome: (req, res, next) => {
        var productCategoryObject = []

        message = ""
        admin = false
        var autosearch = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM personal_care UNION SELECT * FROM health_wellness UNION SELECT * FROM beauty_cosmetics UNION SELECT * FROM beverages UNION SELECT * FROM birthday_items ';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let category = []
                let displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].display_category)
                    displayCategory = [...new Set(displayCategory)]
                }

                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }
                for (let i = 0; i < displayCategory.length; i++) {
                    productCategoryObject.push({
                        displayName: displayCategory[i],
                        name: category[i]
                    })
                }
                res.render('index', {
                    message: "", 
                    productCategoryObject: productCategoryObject, 
                    autosearch: autosearch,
                    admin : admin
                });
            }
        })
    },

    showProductPage: (req, res, next) => {
        var productCategoryObject = []
        admin = false
        message = ""

        var autosearch = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM personal_care UNION SELECT * FROM health_wellness UNION SELECT * FROM beauty_cosmetics UNION SELECT * FROM beverages UNION SELECT * FROM birthday_items';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let category = []
                let displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].display_category)
                    displayCategory = [...new Set(displayCategory)]
                }

                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }
                for (let i = 0; i < displayCategory.length; i++) {
                    productCategoryObject.push({
                        displayName: displayCategory[i],
                        name: category[i]
                    })
                }
                res.render('index', {
                    message: "", 
                    productCategoryObject: productCategoryObject, 
                    autosearch: autosearch,
                    admin : admin
                });
            }
        })
    },

    postLogin: (req, res, next) => {
        var email = req.body.emailId
        var password = req.body.password
        admin = false
        message = ""
        var autosearch = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM personal_care UNION SELECT * FROM health_wellness UNION SELECT * FROM beauty_cosmetics UNION SELECT * FROM beverages UNION SELECT * FROM birthday_items ';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })

        var sql = "select * from logincred";
        var query = db.query(sql, function (err, rows) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                if (rows[0].emailId === email && rows[0].password === password) {
                    res.redirect('admin-category/grocery');
                }
                else {
                    message = "Login Credentials are wrong";
                    res.render('login', { 
                        message: message, 
                        autosearch : autosearch, 
                        admin : admin });
                }
            }
        })
    },

    deleteProduct: (req, res, next) => {
        var id = req.body.deleteId
        var category = req.body.category
        var subCategory = req.body.subCategory

        if (subCategory === "") {
            var sql = `DELETE FROM ${category} WHERE id = ${id}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    res.redirect(`admin-category/${category}`);
                }
            })
        }
        else {
            var sql = `DELETE FROM ${subCategory} WHERE id = ${id}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    var sql = `DELETE FROM ${category} WHERE id = ${id}`;
                    var query = db.query(sql, function (err, rows) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {
                            res.redirect(`admin-subcategory/${category}/${subCategory}`);
                        }
                    })
                }
            })
        }
    },


    showEditProduct: (req, res, next) => {

        var editID = req.body.editId
        var category = req.body.category
        var subCategory = req.body.subCategory

        message = ""

        if (subCategory == "") {
            var sql = `select * FROM ${category} WHERE id = ${editID}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    res.redirect(`/admin-category/${category}/${editID}`);
                }
            })
        }
        else {
            var sql = `select * FROM ${subCategory} WHERE id = ${editID}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    res.redirect(`/admin-subCategory/${category}/${subCategory}/${editID}`);
                }
            })
        }


    },

    showCategoryProductsUser: (req, res, next) => {

        var id = req.params.category;
        admin = false
        message = ""

        var autosearch = []
        var sql = 'SELECT * FROM grocery';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let productCategoryObject = {}
                let category = []
                let displayCategory = []

                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].display_category)
                    displayCategory = [...new Set(displayCategory)]
                }

                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i in displayCategory) {
                    let sample = []
                    product_categories.filter(val => {
                        if (val.display_category === displayCategory[i]) {
                            sample.push({ displayName: val.display_sub_category, name: val.sub_category })
                        }
                    })
                    productCategoryObject[category[i]] = sample
                }
                var sql = `select * from ${id}`;
                var query = db.query(sql, function (err, products) {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    else {
                        res.render('products', {
                            products: products,
                            productCategoryObject: productCategoryObject,
                            message: message,
                            id: id,
                            subCategory: "",
                            autosearch: autosearch,
                            admin : admin
                        });
                    }
                })
                // }
            }
        })
    },

    showSubCategoryProductsUser: (req, res, next) => {

        var id = req.params.category;
        var subCategory = req.params.subCategory;
        admin = false
        message = ""

        var autosearch = []
        var sql = 'SELECT * FROM grocery';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let productCategoryObject = {}
                let category = []
                let displayCategory = []

                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].display_category)
                    displayCategory = [...new Set(displayCategory)]
                }

                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i in displayCategory) {
                    let sample = []
                    product_categories.filter(val => {
                        if (val.display_category === displayCategory[i]) {
                            sample.push({ displayName: val.display_sub_category, name: val.sub_category })
                        }
                    })
                    productCategoryObject[category[i]] = sample
                }

                if (subCategory) {
                    var sql = `select * from ${subCategory}`;
                    var query = db.query(sql, function (err, products) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {

                            res.render('products', {
                                products: products,
                                productCategoryObject: productCategoryObject,
                                message: message,
                                id: id,
                                subCategory: subCategory,
                                autosearch: autosearch,
                                admin : admin
                            });
                        }
                    })
                }
            }
        })
    },


    showCategoryProducts: (req, res, next) => {

        var editID = req.params.editId
        var id = req.params.category;
        admin = true

        message = ""

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let productCategoryObject = {}
                let category = []
                let displayCategory = []

                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].display_category)
                    displayCategory = [...new Set(displayCategory)]
                }

                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i in displayCategory) {
                    let sample = []
                    product_categories.filter(val => {
                        if (val.display_category === displayCategory[i]) {
                            sample.push({ displayName: val.display_sub_category, name: val.sub_category })
                        }
                    })
                    productCategoryObject[category[i]] = sample
                }
                var sql = `select * from ${id}`;
                var query = db.query(sql, function (err, products) {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    else {
                        let editProduct = products.find(val => {
                            if (val.id == editID) {
                                return val
                            }
                        })

                        res.render('admin', {
                            products: products,
                            productCategoryObject: productCategoryObject,
                            editProduct: editProduct,
                            message: message,
                            id: id,
                            subCategory: "",
                            admin : admin
                        });
                    }
                })
                // }
            }
        })
    },


    showSubCategoryProducts: (req, res, next) => {

        var editID = req.params.editId
        var id = req.params.category;
        var subCategory = req.params.subCategory;
        admin = true

        message = ""

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let productCategoryObject = {}
                let category = []
                let displayCategory = []

                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].display_category)
                    displayCategory = [...new Set(displayCategory)]
                }

                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i in displayCategory) {
                    let sample = []
                    product_categories.filter(val => {
                        if (val.display_category === displayCategory[i]) {
                            sample.push({ displayName: val.display_sub_category, name: val.sub_category })
                        }
                    })
                    productCategoryObject[category[i]] = sample
                }

                if (subCategory) {
                    var sql = `select * from ${subCategory}`;
                    var query = db.query(sql, function (err, products) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {
                            let editProduct = products.find(val => {
                                if (val.id == editID) {
                                    return val
                                }
                            })
                            res.render('admin', {
                                products: products,
                                productCategoryObject: productCategoryObject,
                                editProduct: editProduct,
                                message: message,
                                id: id,
                                subCategory: subCategory,
                                admin : admin
                            });
                        }
                    })
                }
            }
        })
    },

    showContact: (req, res, next) => {
        message = ""
        admin = false
        var autosearch = []
        var sql = 'SELECT * FROM grocery';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })
        res.render('contact', { autosearch: autosearch, message: message, admin : admin });
    },

    showAboutUs: (req, res, next) => {
        var message = ""
        admin = false
        var autosearch = []
        var sql = 'SELECT * FROM grocery';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })
        res.render('aboutUs', { autosearch: autosearch, message: message, admin : admin });
    },

    showLogin: (req, res, next) => {
        var message = ""
        var autosearch = []
        admin = false
        var sql = 'SELECT * FROM grocery';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearch.push(val.name))
            }
            autosearch = JSON.stringify(autosearch);
        })
        res.render('login', { message: message, autosearch: autosearch, admin : admin });
    },

    addCategoryProduct: (req, res, next) => {
        var editID = req.params.editId
        var id = req.params.category;
        message = '';

        var name = req.body.name
        var actualPrice = req.body.actualPrice
        var cuttingPrice = req.body.cuttingPrice

        if (!req.files)
            return res.status(400).send('No files were uploaded.');

        var file = req.files.uploaded_image;
        var img_name = file.name;

        if (file.mimetype == "image/jpeg" || file.mimetype == "image/png" || file.mimetype == "image/gif") {

            file.mv('public/uploads/' + file.name, function (err) {

                if (err)

                    return res.status(500).send(err);

                if (editID) {
                    var sql = `UPDATE ${id} SET img="${img_name}", name="${name}", actualPrice=${actualPrice}, cuttingPrice=${cuttingPrice} where id=${editID}`;
                    var query = db.query(sql, function (err, result) {
                        res.redirect(`/admin-category/${id}`);
                    });
                }
                else {
                    var sql = `INSERT INTO ${id} (img, name, actualPrice, cuttingPrice) VALUES ("${img_name}", "${name}", ${actualPrice}, ${cuttingPrice})`;
                    var query = db.query(sql, function (err, result) {
                        res.redirect(`/admin-category/${id}`);
                    });
                }
            });
        } else {
            message = "This format is not allowed , please upload file with '.png','.gif','.jpg'";
            res.render('sampleIndex', { message: message });
        }
    },

    addSubCategoryProduct: (req, res, next) => {
        var editID = req.params.editId
        var id = req.params.category;
        var subCategory = req.params.subCategory;

        message = '';

        var name = req.body.name
        var actualPrice = req.body.actualPrice
        var cuttingPrice = req.body.cuttingPrice

        if (!req.files)
            return res.status(400).send('No files were uploaded.');

        var file = req.files.uploaded_image;
        var img_name = file.name;

        if (file.mimetype == "image/jpeg" || file.mimetype == "image/png" || file.mimetype == "image/gif") {

            file.mv('public/uploads/' + file.name, function (err) {

                if (err)

                    return res.status(500).send(err);

                if (editID) {
                    var sql = `UPDATE ${subCategory} SET img="${img_name}", name="${name}", actualPrice=${actualPrice}, cuttingPrice=${cuttingPrice} where id=${editID}`;
                    var query = db.query(sql, function (err, result) {
                        var sql = `UPDATE ${id} SET img="${img_name}", name="${name}", actualPrice=${actualPrice}, cuttingPrice=${cuttingPrice} where id=${editID}`;
                        var query = db.query(sql, function (err, result) {
                            res.redirect(`/admin-subCategory/${id}/${subCategory}`);
                        });
                    });
                }
                else {
                    var sql = `INSERT INTO ${subCategory} (img, name, actualPrice, cuttingPrice) VALUES ("${img_name}", "${name}", ${actualPrice}, ${cuttingPrice})`;
                    var query = db.query(sql, function (err, result) {
                        var sql = `INSERT INTO ${id} (img, name, actualPrice, cuttingPrice) VALUES ("${img_name}", "${name}", ${actualPrice}, ${cuttingPrice})`;
                        var query = db.query(sql, function (err, result) {
                            res.redirect(`/admin-subCategory/${id}/${subCategory}`);
                        });
                    });
                }
            });
        } else {
            message = "This format is not allowed , please upload file with '.png','.gif','.jpg'";
            res.render('sampleIndex', { message: message });
        }
    },

    enquiryMail: (req, res, next) => {
        var name = req.body.name
        var email = req.body.emailId
        var message = req.body.message

        var messageBody = "\n Name : " + name + "\n Email-id : " + email + "\n Message : " + message
        mailUtils.sendMail('atozonlinemart5@gmail.com', "Enquiry Mail", messageBody)
        res.render('contact', {
        });
    },
}