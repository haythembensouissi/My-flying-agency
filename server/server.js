var express=require("express")
const handle=require("../server/handlers/index")
const app=express()
app.use(express.json())
var host="127.0.0.1"
app.get("/user/:id",handle.getaUser)

app.post("/flight",handle.addaflight)

app.put("/flight/:id",handle.updateaflightDate)

app.delete("/flight/:id",handle.deleteaflight)

const port=5000
app.listen(port,()=>{
    console.log(`listening on http://${host}:${port}`)
})
