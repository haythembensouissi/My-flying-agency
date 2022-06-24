import React from "react";
const Oneadd=(props)=>{
    <div className="oneTodo">
  <h1>{props.content.countryname}</h1>
  <img src={props.content.image}/>
    <p className="paragraph">{props.content.description}</p>
</div>
}
export default Oneadd