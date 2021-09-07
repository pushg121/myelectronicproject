const { request } = require("express");
var express = require('express');
const pool = require('./pool');
var router = express.Router();
var LocalStorage = require("node-localstorage").LocalStorage
localStorage = new LocalStorage('./scratch')
router.get('/adminlogin',function(req,res,next) {
    res.render('adminlogin',{msg:''});
});

router.get("/checklogin", function (req, res, next) {
  var pcount = 0;
  var scount = 0;
  var acount = 0; 
  pool.query("select  count(*) as pc from products", function (error, result) {
  console.log("product", result[0].pc);
    pcount = result;
  });
  pool.query("select count(*) as sc from suppdata", function (error, result) {
    scount = result;
    console.log("supplier", result[0].sc);
  });
  pool.query("select count(*) as ac from adminlogin", function (error, result) {
    acount = result;
    console.log("admin", result[0].ac);
  });
  console.log(acount)
    pool.query("select * from adminlogin where adminid=? and password=?",[req.query.adminid, req.query.password],
      function (error, result) {
        if (error) {
          console.log(error);
          res.render("adminlogin", { msg: "Server Error" });
        } else {
          if (result.length == 0) {
            res.render("adminlogin", { msg: "Invalid UserId/Password" })
          } 
          else 
          {
            localStorage.setItem("ADMIN",result)
            res.render("dashboard", 
            { 
              admin:result[0],
              productcount: pcount[0].pc,
              suppliercount: scount[0],
              admincount: acount[0].ac});
          }
        }
      }
    );
  });
  router.get("/logout",function(req,res,next) {
    localStorage.clear();
    res.render('adminlogin',{msg:''});
});
  
module.exports=router