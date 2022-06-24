const queries=require("../queries/index")

module.exports={
    getaUser:(req,res)=>{
       queries.getOneuser(req.params.id,(result,err)=>{
            if(err){
                res.status(500).send("error")
            }
            else{
                res.status(200).json(result)
            }
        })
    },
    addaflight:(req,res)=>{
       queries.addOneflight(req.body,(err,results)=>{
            if(err){
                res.status(500).send("error")
            }
            else{
                res.status(201).send(results)
            }
        })

        
    },deleteaflight:(req,res)=>{
       queries.cancelOneflight(req.params.id,(err,results)=>{
            if(err){
                res.status(500).send("error")
            }
            else{
                res.status(201).send(results)
            }
        })
    },updateaflightDate:(req,res)=>{
       queries.updateOneflight(req.params.id,(err,results)=>{
            if(err){
                res.status(500).send("error")
            }
            else{
                res.status(201).send(results)
            }
        })
    }

}