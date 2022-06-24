//this is the react  page for the adds
import React from "react";
import axios from "axios";
import Alladds from "./alladds";
import dummydata from "./dummydata"
class Adds extends React.Component{
constructor(props){
    super(props)
    this.state={
        adds:dummydata
    }
}
componentDidMount(){
    axios.get("/").then(data=>this.setState({
        adds:data
    }))
}
render(){
    <Alladds adds={this.state.adds}/>
}
}
import { from } from "responselike";
ReactDOM.render(<Adds/>,document.getElementById("Adds"))