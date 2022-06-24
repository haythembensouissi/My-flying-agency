//this is the react  page for the adds
import React from "react";
import axios from "axios";
import Alladds from "./alladds";
class Adds extends React.Component{
constructor(props){
    super(props)
    this.state={
        adds:[]
    }
}
componentDidMount(){
    axios.get().then()
}
render(){
    <Alladds adds={this.state.adds}/>
}
}
ReactDOM.render(<Adds/>,document.getElementById("Adds"))