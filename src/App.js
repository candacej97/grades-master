import React, { Component } from 'react';
import { HashRouter, Route, Link, Switch } from 'react-router-dom';

import Homepage from './components/Homepage'
import SignIn from './components/SignIn'
import SignUp from './components/SignUp'

import './App.css';

class App extends Component {
  render() {
    return (
      <HashRouter>
        <Switch>
          <Route exact path="/" component={Homepage} />
          <Route exact path="/sign-in" component={SignIn} />
          <Route exact path="/sign-up" component={SignUp} />
        </Switch>
      </HashRouter>
    );
  }
}

export default App;
