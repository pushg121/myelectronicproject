var express = require("express");
var router = express.Router();
var pool=require('./pool')

/* GET home page. */
router.get('/supplierview', function(req, res, next) {
  res.render('supplier',{msg:''});
});

router.get("/submitrecord",function(req,res){


pool.query("insert into suppdata( supplierid,firstname,lastname,address,city,state,zip,mobilenumber,phonenumber,firmname,logo,picture)values(?,?,?,?,?,?,?,?,?,?,?,?)",
[
  req.query.supplierid,
  req.query.firstname,
  req.query.lastname,
  req.query.address,
  req.query.city,
  
  req.query.state,
  req.query.zip,
  req.query.mobilenumber,
  req.query.phonenumber,
  req.query.firmname,
  req.query.logo,
  req.query.picture],
  function(error,result)
{
  if(error)
  {
    console.log(error)
    res.render("supplier",{msg:"Fail to Submit Record"});
  }
  else
  {
    res.render("supplier",{msg:"Record Submitted..."});
  }
})
})
module.exports = router;
