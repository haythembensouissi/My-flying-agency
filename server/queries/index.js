
const conn=require("./script")
module.exports={
getOneuser: function(id,callback) {
    const sql=`SELECT * FROM users WHERE id_users=?`
    conn.query(sql,[id],(error,results,fields)=>{
      callback(error,results)
    })
    },
    addoneuser: function (data,callback) {
        const sql=`INSERT INTO users (username,email,password) VALUES(?,?,?)`
        conn.query(sql,[data.FirstName,data.LastName],(error,results,fields)=>{
          callback(error,results,fields)
        })
      },updateOneflight:(data,callback)=>{
        const sql=`UPDATE "flight" SET departuretime=? `
        conn.query(sql,[data.departuretime],(err,results,fields)=>{
            callback(err,results,fields)
        })
},
cancelOneflight:(data,callback)=>{
    const sql=`DELETE FROM "flight" where flightid=?`
    conn.query(sql,[data.idflight],(err,results,fields)=>{
        callback(err,results,fields)
    })
},addOneflight:(data,callback)=>{
    const sql=`INSERT INTO "flight" (idplane,iduser,departuretime,arrivaltime) VALUES (?,?,?,?)`
    conn.query(sql,[data.idplane,data.iduser,data.departuretime,data.arrivaltime],(err,results,fields)=>{
        callback(err,results,fields)
    })

}
}