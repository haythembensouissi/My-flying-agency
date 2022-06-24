var express=require("express")
const app=express()
app.use(express.json())
const port=3000 || process.env.PORT
var host="127.0.0.1"
app.listen(port,()=>{
    console.log(`listening on http://${host}:${port}`)
})
app.get("/")
app.post("/")