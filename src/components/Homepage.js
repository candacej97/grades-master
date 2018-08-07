import React, { Component } from 'react';

export default class Homepage extends Component {
    render() {
        return(
            <div className="App">
            <header className="App-header">
              <h1 className="App-title">Grades Master</h1>
            </header>
            <button>Sign In</button>
            <button>Sign Up</button>
          </div>    
        );
    }
}