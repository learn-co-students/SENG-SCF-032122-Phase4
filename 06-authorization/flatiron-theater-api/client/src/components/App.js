import { Route, Switch } from "react-router-dom";

import {useEffect, useState} from 'react'
import ProductionContainer from './ProductionContainer'
import ProductionForm from './ProductionForm'
import Navigation from './Navigation'
import ProductionDetail from './ProductionDetail'
import Auth from './Auth'
import Login from './LogIn'

function App() {
  const [productions, setProductions] = useState([])
  const [errors, setErrors] = useState(false)
  const [cart, setCart] = useState([])

  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/authorized_user")
    .then((res) => {
      if(res.ok) {
        res.json()
        .then((user) => {
          console.log(user)
          setIsAuthenticated(true);
          setUser(user);
        })
        .then(()=> {
          fetch('/productions')
          .then(res => res.json())
          .then(productions => {
            setProductions(productions)
          });
        })
      }
      else alert("you are not logged in please try again")
    });

   

  },[]);

  function handlePost(obj){
      fetch('/productions',{
        method:'POST',
        headers: {'Content-Type': 'application/json'},
        body:JSON.stringify(obj)
      })
      .then(res => {
        if(res.ok){
          res.json()
          .then(json =>  {
            setProductions([...productions,json])
          })
        } else {
          res.json()
          .then(json => {
          setErrors(Object.entries(json.errors))
          })
        }
      })
  }

  if (!isAuthenticated) return <Login error={'please login'} setIsAuthenticated={setIsAuthenticated} setUser={setUser} />;

  return (
    <>
    <Navigation cart={cart} setIsAuthenticated={setIsAuthenticated} setUser={setUser} user={user}/>
    <Switch>
    <Route exact path="/">
      <ProductionContainer productions={productions}/>
    </Route>
    <Route exact path="/productions/new">
      <ProductionForm handlePost={handlePost} errors={errors} />
    </Route>
    <Route exact path="/productions/:id">
        <ProductionDetail cart={cart} setCart={setCart}/>
    </Route>
    <Route path="/sign_up">
          <Auth />
    </Route>
    <Route path="/login">
          <Login />
    </Route>
    </Switch>
    </>
  );
}

export default App;
