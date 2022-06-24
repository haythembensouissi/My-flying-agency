import React from "react";
const Oneadd=(props)=>{
    <div className="oneTodo">
  <h1 className="header">{props.content.countryname}</h1>
  <img className="country" src={props.content.image}/>
    <p className="paragraph">{props.content.description}</p>
</div>
}
export default Oneadd