var mysql = require('mysql')
var mailUtils = require('./../utils/mail-utils')

var message = '';
module.exports = {
    
    showSearchProduct: (req, res, next) => {
        message = ""
        var search = req.body.search

        // var autosearchList = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
        var query = db.query(sql, function (err, autosearchData) {
            if (err) {
                return res.status(500).send(err);
            }
            else {
                let searchObject = autosearchData.find(val => val.name == search)
                if(searchObject){
                    if (searchObject.subCategory == "") {
                        res.redirect(`/user/${searchObject.category}`);
                    }
                    else {
                        res.redirect(`/user/${searchObject.category}/${searchObject.subCategory}`);
                    }
                }
                else{
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


        // var sqlQuery = []
        // var sql = ""

        // let category = []
        //         for (var i in product_categories) {
        //             category.push(product_categories[i].category)
        //             category = [...new Set(category)]
        //         }

        //         for (let i = 0; i < category.length - 1; i++) {
        //                 sqlQuery.push(`select * from ${category[i]} Union`)
        //             }
        //             sqlQuery.push(`select * from ${category[category.length - 1]}`)

        //             sqlQuery = sqlQuery.join(' ')

        //              sql = sqlQuery;
        //              console.log('sql: ', sql);

        var autosearchList = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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

                let displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                let category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i = 0; i < displayCategory.length; i++) {
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
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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

                let displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                let category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i = 0; i < displayCategory.length; i++) {
                    let catArr = product_categories.filter(val => val.category == category[i])
                    let subCategory = {}

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
                                autosearchList
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
                                autosearchList
                            });
                        }
                    })
                }
            }
        })
    },

    postLogin: (req, res, next) => {
        var autosearchList = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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
                    res.redirect('admin-category/grocery');
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
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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
        message =""
        var autosearchList = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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
        var editId = req.params.editId
        var subCategoryId = ""
        var displayCategoryId = ""
        var displaySubCategoryId = ""
        message = ""

        var autosearchList = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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

                let displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                let category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i = 0; i < displayCategory.length; i++) {
                    let catArr = product_categories.filter(val => val.category == category[i])
                    let subCategory = {}

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

                let dropdownlistObject = productCategoryList.find(val => val.name == categoryId)
                let requiredPair = Object.entries(dropdownlistObject.subCategory)
                let dropdownList = []

                for (let i = 0; i < requiredPair.length; i++) {
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
                        let editProduct = categoryList.find(val => {
                            if (val.id == editId) {
                                return val
                            }
                        })

                        var session = req.session.userId;
                        console.log('session: ', session);
                    
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
                            session
                        });
                    }
                })
            }
        })
    },


    showSubCategoryProducts: (req, res, next) => {
        var categoryId = req.params.categoryId
        var editId = req.params.editId
        var subCategoryId = req.params.subCategoryId
        var displayCategoryId = ""
        var displaySubCategoryId = ""
        message = ""

        var autosearchList = []
        var sql = 'SELECT * FROM grocery UNION SELECT * FROM health_wellness';
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

                let displayCategory = []
                for (var i in product_categories) {
                    displayCategory.push(product_categories[i].displayCategory)
                    displayCategory = [...new Set(displayCategory)]
                }

                let category = []
                for (var i in product_categories) {
                    category.push(product_categories[i].category)
                    category = [...new Set(category)]
                }

                for (let i = 0; i < displayCategory.length; i++) {
                    let catArr = product_categories.filter(val => val.category == category[i])
                    let subCategory = {}

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

                let categoryObject = productCategoryList.find(val => val.name == categoryId)
                let requiredPair = Object.entries(categoryObject.subCategory).find(key => {
                    if (key[1] == subCategoryId) {
                        return key
                    }
                })
                displaySubCategoryId = requiredPair[0]

                var sql = `SELECT * FROM ${categoryId} where subCategory ='${subCategoryId}'`;
                var query = db.query(sql, function (err, categoryList) {
                    if (err) {
                        return res.status(500).send(err);
                    }
                    else {
                        let editProduct = categoryList.find(val => {
                            if (val.id == editId) {
                                return val
                            }
                        })
                        var session = req.session.userId;
                        console.log('session: in show ', session);

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
                            session
                        });
                    }
                })
            }
        })
    },

    addCategoryProduct: (req, res, next) => {
        var editID = req.params.editId
        var categoryId = req.params.categoryId;
        message = '';

        var name = req.body.name
        var actualPrice = req.body.actualPrice
        var cuttingPrice = req.body.cuttingPrice
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

    addSubCategoryProduct: (req, res, next) => {
        var editID = req.params.editId
        var categoryId = req.params.categoryId;
        var subCategoryId = req.params.subCategoryId;
        var displaySubCategoryId = req.body.displaySubCategoryId
        message = '';

        var name = req.body.name
        var actualPrice = req.body.actualPrice
        var cuttingPrice = req.body.cuttingPrice

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