import logo from './logo.svg';
import './App.css';

import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Title from './Title.';

function App() {
  const [count, setCount] = useState(0);

//you

  // useEffect(() => {
  //   fetch("/hello")
  //     .then((r) => r.json())
  //     .then((data) => setCount(data.count));
  // }, []);

  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route path="/">
            <Title />
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;