var mysql = require('mysql')
var mailUtils = require('./../utils/mail-utils')

var message = '';
module.exports = {

    showSearchProduct: (req, res, next) => {

        message = ""

        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;

        var search = req.body.search
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                var searchObject = autosearchData.find(val => val.name == search)
                if (searchObject) {
                    if (searchObject.subCategory == "") {
                        res.redirect(`/user/${searchObject.category}`);
                    }
                    else {
                        res.redirect(`/user/${searchObject.category}/${searchObject.subCategory}`);
                    }
                }
                else {
                    res.redirect('/notFound')
                }
            }
        })
    },

    logout: (req, res, next) => {
        req.session.destroy(function (err) {
            res.redirect("/login");
        })
    },

    showHome: (req, res, next) => {

        message = ""

        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;

        var autosearchList = []
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))
            }
        })

        var productCategoryList = []

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {

                var displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                var category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (var i = 0; i < displayCategory.length; i++) {
                    productCategoryList.push({
                        displayName: displayCategory[i],
                        name: category[i]
                    })
                }

                res.render('index', {
                    message,
                    productCategoryList,
                    autosearchList
                });
            }
        })
    },

    showCategoryProductsUser: (req, res, next) => {

        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))
            }
        })

        var subCategoryId = req.params.subCategoryId;
        var categoryId = req.params.categoryId
        message = ""

        var productCategoryList = []

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {

                var displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                var category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (var i = 0; i < displayCategory.length; i++) {
                    var catArr = product_categories.filter(val => val.category == category[i])
                    var subCategory = {}

                    catArr.map(val => {
                        if (val.displaySubCategory.length > 0) {
                            subCategory[val.displaySubCategory] = val.subCategory
                        }
                    })

                    productCategoryList.push({
                        displayName: displayCategory[i],
                        name: category[i],
                        subCategory: subCategory
                    })
                }

                var activeLinkName = req.originalUrl.split('/')

                if (subCategoryId) {
                    var sql = `SELECT * FROM ${categoryId} where subCategory = "${subCategoryId}"`;
                    var query = db.query(sql, function (err, subCategoryList) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {
                            res.render('products', {
                                message,
                                productCategoryList,
                                products: subCategoryList,
                                autosearchList,
                                activeLinkName
                            });
                        }
                    })
                }
                else {
                    var sql = `SELECT * FROM ${categoryId}`;
                    var query = db.query(sql, function (err, categoryList) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {
                            res.render('products', {
                                message,
                                productCategoryList,
                                products: categoryList,
                                autosearchList,
                                activeLinkName
                            });
                        }
                    })
                }
            }
        })
    },

    postLogin: (req, res, next) => {
        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))
            }
        })

        var email = req.body.emailId
        var password = req.body.password

        var sql = "select * from login_cred";
        var query = db.query(sql, function (err, rows) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                if (rows[0].email === email && rows[0].password === password) {
                    req.session.userId = rows[0].id;
                    res.redirect('admin-category/new_arrivals');
                }
                else {
                    message = "Login Credentials are wrong";
                    res.render('login', {
                        message,
                        autosearchList
                    });
                }
            }
        })
    },

    showContact: (req, res, next) => {
        var successMessage = ""
        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))

                res.render('contact', {
                    successMessage,
                    autosearchList
                });
            }
        })
    },

    notFound: (req, res, next) => {
        message = ""
        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))

                res.render('notFound', {
                    message,
                    autosearchList
                });
            }
        })
    },

    showAboutUs: (req, res, next) => {
        message = ""
        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))

                res.render('aboutUs', {
                    message,
                    autosearchList
                });
            }
        })
    },

    showLogin: (req, res, next) => {
        var message = ""
        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))

                res.render('login', {
                    message,
                    autosearchList
                });
            }
        })
    },

    enquiryMail: (req, res, next) => {
        var name = req.body.name
        var email = req.body.emailId
        var phone = req.body.phone
        var message = req.body.message

        var messageBody = "\n Name : " + name + "\n Email-id : " + email + "\n Phone Number : " + phone + "\n Message : " + message
        mailUtils.sendMail('atozonlinemart5@gmail.com', "Enquiry Mail", messageBody)
        res.redirect('/contact');
    },


    deleteProduct: (req, res, next) => {
        var deleteId = req.body.deleteId
        var categoryId = req.body.categoryId
        var subCategoryId = req.body.subCategoryId

        if (subCategoryId === "") {
            var sql = `DELETE FROM ${categoryId} WHERE id = ${deleteId}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    res.redirect(`admin-category/${categoryId}`);
                }
            })
        }
        else {
            var sql = `DELETE FROM ${categoryId} WHERE id = ${deleteId}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    var sql = `DELETE FROM ${categoryId} WHERE id = ${deleteId}`;
                    var query = db.query(sql, function (err, rows) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {
                            res.redirect(`admin-subcategory/${categoryId}/${subCategoryId}`);
                        }
                    })
                }
            })
        }
    },


    showEditProduct: (req, res, next) => {

        var editID = req.body.editId
        var categoryId = req.body.categoryId
        var subCategoryId = req.body.subCategoryId

        message = ""

        if (subCategoryId == "") {
            var sql = `select * FROM ${categoryId} WHERE id = ${editID}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    res.redirect(`/admin-category/${categoryId}/${editID}`);
                }
            })
        }
        else {
            var sql = `select * FROM ${categoryId} WHERE id = ${editID}`;
            var query = db.query(sql, function (err, rows) {
                if (err) {
                    return res.status(500).send(err);
                }
                else {
                    res.redirect(`/admin-subCategory/${categoryId}/${subCategoryId}/${editID}`);
                }
            })
        }


    },

    showCategoryProducts: (req, res, next) => {

        var categoryId = req.params.categoryId
        var editId = req.params.editId ? req.params.editId : ""
        var subCategoryId = ""
        var displayCategoryId = ""
        var displaySubCategoryId = ""
        var editProduct = ""
        var dropdownList = ""
        var editRedirect = false
        var categoryRedirect = true
        message = ""

        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))
            }
        })

        var productCategoryList = []

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {

                var displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                var category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (var i = 0; i < displayCategory.length; i++) {
                    var catArr = product_categories.filter(val => val.category == category[i])
                    var subCategory = {}

                    catArr.map(val => {
                        if (val.displaySubCategory.length > 0) {
                            subCategory[val.displaySubCategory] = val.subCategory
                        }
                    })

                    productCategoryList.push({
                        displayName: displayCategory[i],
                        name: category[i],
                        subCategory: subCategory
                    })
                }

                var dropdownlistObject = productCategoryList.find(val => val.name == categoryId)

                if (dropdownlistObject) {
                    var requiredPair = Object.entries(dropdownlistObject.subCategory)
                    dropdownList = []

                    for (var i = 0; i < requiredPair.length; i++) {
                        dropdownList.push({
                            displayName: requiredPair[i][0],
                            name: requiredPair[i][1]
                        })
                    }
                    displayCategoryId = productCategoryList.find(val => val.name == categoryId).displayName

                    var sql = `SELECT * FROM ${categoryId}`;
                    var query = db.query(sql, function (err, categoryList) {
                        if (err) {
                            return res.status(500).send(err);
                        }
                        else {

                            if (editId.length > 0) {
                                editProduct = categoryList.find(val => {
                                    if (val.id == editId) {
                                        return val
                                    }
                                })
                                if (!editProduct) {
                                    editRedirect = true;
                                    message = "Edit Id does not exists";
                                }
                            }

                            var session = req.session.userId;

                            res.render('admin', {
                                message,
                                productCategoryList,
                                products: categoryList,
                                editProduct,
                                categoryId,
                                subCategoryId,
                                displayCategoryId,
                                displaySubCategoryId,
                                dropdownList,
                                autosearchList,
                                session,
                                editRedirect,
                                categoryRedirect
                            });
                        }
                    })
                }
                else {
                    message = "Category does not exist"

                    var session = req.session.userId;

                    res.render('admin', {
                        message,
                        productCategoryList,
                        categoryId,
                        subCategoryId,
                        displayCategoryId,
                        displaySubCategoryId,
                        dropdownList,
                        autosearchList,
                        session,
                        editRedirect,
                        editProduct,
                        products: [],
                        categoryRedirect
                    });

                }
            }
        })
    },


    showSubCategoryProducts: (req, res, next) => {
        var categoryId = req.params.categoryId
        var editId = req.params.editId ? req.params.editId : ""
        var subCategoryId = req.params.subCategoryId
        var displayCategoryId = ""
        var displaySubCategoryId = ""
        var editProduct = ""
        var editRedirect = false
        var categoryRedirect = false
        message = ""

        var autosearchList = []
        var sqlQuery = []
        var sql = ""
        var category = ['new_arrivals', 'breakfast_dairy', 'oral_care', 'grocery', 'beverages', 'personal_care', 'beauty_cosmetics', 'cleaning_household', 'branded_foods', 'baby_care', 'pooja_needs', 'mask_sanitizer', 'health_wellness', 'bakery_cakes', 'birthday_items', 'disposable_items', 'stationary', 'upvaas_fast_special', 'sunglasses_watches']
        for (var i = 0; i < category.length - 1; i++) {
            sqlQuery.push(`select * from ${category[i]} Union`)
        }
        sqlQuery.push(`select * from ${category[category.length - 1]}`)
        sqlQuery = sqlQuery.join(' ')
        sql = sqlQuery;
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                autosearchData.map(val => autosearchList.push(val.name))
            }
        })

        var productCategoryList = []

        var sql = 'SELECT * FROM product_categories';
        var query = db.query(sql, function (err, product_categories) {
            if (err) {
                return res.status(500).send(err);
            }
            else {

                var displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                var category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (var i = 0; i < displayCategory.length; i++) {
                    var catArr = product_categories.filter(val => val.category == category[i])
                    var subCategory = {}

                    catArr.map(val => {
                        if (val.displaySubCategory.length > 0) {
                            subCategory[val.displaySubCategory] = val.subCategory
                        }
                    })

                    productCategoryList.push({
                        displayName: displayCategory[i],
                        name: category[i],
                        subCategory: subCategory
                    })
                }
                displayCategoryId = productCategoryList.find(val => val.name == categoryId).displayName

                var categoryObject = productCategoryList.find(val => val.name == categoryId)
                var requiredPair = Object.entries(categoryObject.subCategory).find(key => {
                    if (key[1] == subCategoryId) {
                        return key
                    }
                })
                if (requiredPair) {
                    displaySubCategoryId = requiredPair[0];
                }
                else {
                    message = "Sub Category does not exist"
                }

                var sql = `SELECT * FROM ${categoryId} where subCategory ='${subCategoryId}'`;
                var query = db.query(sql, function (err, categoryList) {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    else {

                        if (editId.length > 0) {
                            editProduct = categoryList.find(val => {
                                if (val.id == editId) {
                                    return val
                                }
                            })
                            if (!editProduct) {
                                editRedirect = true;
                                message = "Edit Id does not exists";
                            }
                        }

                        var session = req.session.userId;

                        res.render('admin', {
                            message,
                            productCategoryList,
                            products: categoryList,
                            editProduct,
                            categoryId,
                            subCategoryId,
                            displayCategoryId,
                            displaySubCategoryId,
                            autosearchList,
                            session,
                            editRedirect,
                            categoryRedirect
                        });
                    }
                })
            }
        })
    },

    addCategoryProduct: (req, res, next) => {
        var editID = req.params.editId
        var categoryId = req.params.categoryId;

        var name = req.body.name.trim()
        var actualPrice = req.body.actualPrice
        var cuttingPrice = req.body.cuttingPrice.length > 0 ? req.body.cuttingPrice : 0
        var subCategory = req.body.subCategory ? req.body.subCategory.split(',')[0] : ""
        var displaySubCategory = req.body.subCategory ? req.body.subCategory.split(',')[1] : ""

        if (!req.files)
            return res.status(400).send('No files were uploaded.');

        var file = req.files.img;
        var img_name = file.name;

        if (file.mimetype == "image/jpeg" || file.mimetype == "image/png" || file.mimetype == "image/gif") {

            file.mv('public/uploads/' + file.name, function (err) {

                if (err)

                    return res.status(500).send(err);

                if (editID) {
                    var sql = `UPDATE ${categoryId} SET category="${categoryId}", subCategory="${subCategory}", displaySubCategory="${displaySubCategory}", img="${img_name}", name="${name}", actualPrice=${actualPrice}, cuttingPrice=${cuttingPrice} where id=${editID}`;
                    var query = db.query(sql, function (err, result) {
                        res.redirect(`/admin-category/${categoryId}`);
                    });
                }
                else {
                    var sql = `INSERT INTO ${categoryId} (category, subCategory, displaySubCategory, img, name, actualPrice, cuttingPrice) VALUES ("${categoryId}", "${subCategory}","${displaySubCategory}", "${img_name}", "${name}", ${actualPrice}, ${cuttingPrice})`;
                    var query = db.query(sql, function (err, result) {
                        res.redirect(`/admin-category/${categoryId}`);
                    });
                }
            });
        } else {
            message = "This format is not allowed , please upload file with '.png','.gif','.jpg'";
            res.render('sampleIndex', { message: message });
        }
    },

    addSubCategory: (req, res, next) => {

        var categoryId = req.params.categoryId;

        var addSubCategory = req.body.addSubCategory.trim()
        var addSubCategoryHeading = addSubCategory.trim().replace(/&/gi, '_').replace(/ /gi, "").replace(/\//gi, "").replace(/-/gi, "")

        message = '';

        var sql = `select * from product_categories where category="${categoryId}"`;
        var query = db.query(sql, function (err, row) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                var sql = `INSERT INTO product_categories (category, displayCategory, subCategory, displaySubCategory) VALUES ('${categoryId}','${row[0].displayCategory}','${addSubCategoryHeading}', '${addSubCategory}')`;
                var query = db.query(sql, function (err, result) {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    else {
                        res.redirect(`/admin-category/${categoryId}`);
                    }
                });

            }
        });

    },

    deleteSubCategory: (req, res, next) => {

        var categoryId = req.params.categoryId;

        var deleteSubCategory = req.body.deleteSubCategory;

        message = '';

        var sql = `delete from product_categories where subCategory='${deleteSubCategory}';`;
        var query = db.query(sql, function (err, row) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                res.redirect(`/admin-category/${categoryId}`);
            }
        });

    },

    addSubCategoryProduct: (req, res, next) => {
        var editID = req.params.editId
        var categoryId = req.params.categoryId;
        var subCategoryId = req.params.subCategoryId;
        var displaySubCategoryId = req.body.displaySubCategoryId
        message = '';

        var name = req.body.name.trim()
        var actualPrice = req.body.actualPrice
        var cuttingPrice = req.body.cuttingPrice.length > 0 ? req.body.cuttingPrice : 0

        if (!req.files)
            return res.status(400).send('No files were uploaded.');

        var file = req.files.img;
        var img_name = file.name;

        if (file.mimetype == "image/jpeg" || file.mimetype == "image/png" || file.mimetype == "image/gif") {

            file.mv('public/uploads/' + file.name, function (err) {

                if (err)

                    return res.status(500).send(err);

                if (editID) {
                    var sql = `UPDATE ${categoryId} SET category="${categoryId}", subCategory="${subCategoryId}", displaySubCategory = "${displaySubCategoryId}", img="${img_name}", name="${name}", actualPrice=${actualPrice}, cuttingPrice=${cuttingPrice} where id=${editID}`;
                    var query = db.query(sql, function (err, result) {
                        res.redirect(`/admin-subCategory/${categoryId}/${subCategoryId}`);
                    });
                }
                else {
                    var sql = `INSERT INTO ${categoryId} (category, subCategory, displaySubCategory, img, name, actualPrice, cuttingPrice) VALUES ("${categoryId}", "${subCategoryId}", "${displaySubCategoryId}", "${img_name}", "${name}", ${actualPrice}, ${cuttingPrice})`;
                    var query = db.query(sql, function (err, result) {
                        res.redirect(`/admin-subCategory/${categoryId}/${subCategoryId}`);
                    });
                }
            });
        } else {
            message = "This format is not allowed , please upload file with '.png','.gif','.jpg'";
            res.render('sampleIndex', { message: message });
        }
    }
}
