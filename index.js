const express = require('express');
const bodyParser = require('body-parser');
const app = express();
var formidable = require('formidable');
var util = require('util');
var fs = require('fs');
var excel = require('excel4node');



// Allow CORS to access this services start //
var cors = require('cors');
app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Headers", "GET,PUT,PATCH,DELETE,POST");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
// Allow CORS to access this services end //


// Database connection start //
const mysql = require('mysql');
var conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "cloudswiftsolutions_com_18042020"
});

conn.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
});
// Database connection over //

app.use(bodyParser.json());

// Root API called. This is static API Start //
app.get('/root', (req, res) => {
    res.json({ "msg": "Mayank Patel" });
});
// Root API called. This is static API Over //

// This is testing array api start //
let arr = ['first', 'second', 'third', 'forth'];
app.get('/arr', (req, res) => {
    //for(i in arr) {res.send(arr[i]);}
    res.send(arr);
});

app.post('/arrpush', (req, res) => {
    var temp = req.body;
    arr.push(temp);
    console.log(arr);
    res.send(arr);
});
// This is testing array api Over //


// Get Users API Start //
app.get('/getUsers', function (req, res) {
    let data = { id: req.body.id };
    //console.log(req.body);
    // var total_records = [];
    // let sql_total = "SELECT * FROM users WHERE deleted_status = ?";
    // let query2 = conn.query(sql_total, 'N', (err, results) => {
    //     if (err) throw err;
    //     total_records.push(results.length);
    // })
    let sql = "SELECT * FROM users LIMIT 0,5";
    let query = conn.query(sql, 'N', (err, results) => {
        if (err) throw err;
        res.json({ page: 11, status: 200, error: 0, success: 1, values: results });
    })
});
// Get Users API Over //

// Add user to database start //
app.post('/addUser', function (req, res) {

    var users = {
        "user_pin": req.body.user_pin,
        "name": req.body.name,
        "first_name": req.body.first_name,
        "last_name": req.body.last_name,
        "email": req.body.email,
        "user_address1": req.body.user_address1
    }

    console.log(users);
    // let sql = "INSERT INTO users SET ?";
    // let query = conn.query(sql, users, (err, results) => {
    //     if (err) throw err;
    //     res.json({status:200,error:0,success:1,insertId:results.insertId,values: users });
    // })
});
// Add user to database over //

// Update user to database start //
app.post('/updateUser', function (req, res) {
    var users = {
        "id": req.body.id,
        "user_pin": req.body.user_pin,
        "name": req.body.name,
        "first_name": req.body.first_name,
        "last_name": req.body.last_name,
        "email": req.body.email
    }
    let sql = "UPDATE users SET ? WHERE id=" + users.id;
    let query = conn.query(sql, users, (err, results) => {
        if (err) throw err;
        res.json({ status: 200, error: 0, success: 1, insertId: results.insertId, values: users });
    })
});
// Update user to database over //


// Update user to database start //
app.post('/updateUserStatus', function (req, res) {
    var users = {
        "id": req.body.id,
        "display_status": req.body.display_status
    }
    let sql = "UPDATE users SET ? WHERE id=" + users.id;
    let query = conn.query(sql, users, (err, results) => {
        if (err) throw err;
        res.json({ status: 200, error: 0, success: 1, insertId: results.insertId, values: users });
    })
});
// Update user to database over //


// Delete user to database start //
app.delete('/deleteUser', function (req, res) {
    var users = {
        "id": req.body.id
    }
    let sql = "DELETE FROM users WHERE id=" + users.id;
    let query = conn.query(sql, users, (err, results) => {
        if (err) throw err;
        res.json({ status: 200, error: 0, success: 1, values: users });
    })
});
// Delete user to database over //




app.post('/createExcel',(req,res)=>{

  var users = {

      "user_pin": req.body.user_pin,
      "name": req.body.name,
      "first_name": req.body.first_name,
      "last_name": req.body.last_name,
      "email": req.body.email,
      "user_address1":req.body.user_address1
  }



  //
    console.log(users.user_address1);
  //
  // let ex = fs.writeFileSync(`${__dirname}/excel/${Date.now()}${xlscreate}.xlsx`,"Hello");
  // console.log(ex) By using File system of node

  var workbook = new excel.Workbook();
  var worksheet = workbook.addWorksheet('firstSheet'); //To add worksheets

  var style = workbook.createStyle({ //To create styles
  font: {
    color: '#FF0800',
    size: 12
  }
});

worksheet.cell(1,10).number(100).style(style);
worksheet.cell(1,2).number(200).style(style);
worksheet.cell(1,3).formula('A1 + B1').style(style);
worksheet.cell(2,1).string('string').style(style);
worksheet.cell(3,1).bool(true).style(style).style({font: {size: 14}});
workbook.write(`${__dirname}/excel/${Date.now()}${users.user_address1}`);


let sql = "INSERT INTO users SET ?"

let query =conn.query(sql,users,(err,result)=>{
  res.send("users")

})

})
app.listen(3400);
