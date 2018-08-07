export class Homepage {
    render() {
        return(
            <div className="App">
            <header className="App-header">
              <img src={logo} className="App-logo" alt="logo" />
              <h1 className="App-title">Grades Master</h1>
            </header>
            <button>Sign In</button>
            <button>Sign Up</button>
          </div>    
        );
    }
}