import React, { Component } from 'react';
//import logo from './logo.svg';
// import './CSS/App.css';
import Form from './Components/Form.js';

class App extends Component {


//omitting constructor() because React does not require it. Declaring state instead.
getRecipe = (jsEvent) => {
  
  //prevents JavaScript's default behavior: full-page refresh 
  jsEvent.preventDefault();
  console.log("This is working!");
}

  render() {
    return (
      <div className="App">

      <header className="App-header">
        <h1 className="App-title">Recipe Search</h1>
      </header>

        <p>Hello everyone! Time to truly understand this project. :D</p>
        
        {//passing state from the parent (App) to the component (Form) via the getRecipe prop.
        }
        <Form getRecipe={this.getRecipe} />
      </div>
    );
  }
}

export default App;
