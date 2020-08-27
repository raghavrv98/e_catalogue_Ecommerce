module.exports={
    showHome: (req, res, next)=>{
        res.render('index', { title: 'Express' });
    },

    showContact: (req, res, next)=>{
        res.render('contact', { title: 'Express' });
    },

    showAboutUs: (req, res, next)=>{
        res.render('aboutUs', { title: 'Express' });
    },
}