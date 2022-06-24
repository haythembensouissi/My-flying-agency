import Oneadd from "./oneadd";
const Alladds=(props)=>(
    <div>   {props.adds.map((add,index)=>{
    return(
        <Oneadd content={add} key={index}/>
    )
    })}
    </div>
 
)
    export default Alladds
