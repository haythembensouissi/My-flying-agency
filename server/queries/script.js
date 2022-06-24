const mysql=require('mysql2')
const config=require('config')
const connection=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'flights'
})
module.exports=connection