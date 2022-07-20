import React, {useState} from 'react'
import Auth from './Auth'
import { useHistory } from "react-router-dom";


function Login({setUser,setIsAuthenticated}) {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
   
    const [error, setError] = useState([])
    let history = useHistory();

    function onSubmit(e){
        e.preventDefault()
        const user = {
            username: username,
            password
        }
       
        fetch(`/login`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(user)
        })
        .then(res => {
          if(res.ok){
            res.json()
            .then(user=>{
              setUser(user)
              setIsAuthenticated(true)
              history.push("/")
              // this will not show the production cards because we have to fetch to get them. hit refresh and cards will appear!
            })
            
          } else {
            res.json()
            .then(json => setError(json.error))
          }
        })
    }
    return (
      
      <div className='login'> 
        <h1>Flatiron Theater Company</h1>
        <form onSubmit={onSubmit}>
        <fieldset>
          <legend>Login</legend>
        <label htmlFor="username">
          Username
        </label>
          <input type="text" id="username" value={username} onChange={(e) => setUsername(e.target.value)} />
        <label htmlFor="password">
         Password
        </label>
        <input type="password" id="password" value={password} onChange={(e) => setPassword(e.target.value)} />
       
        <input type="submit" value="Login!" />
      </fieldset>
      </form>
      {error?<div>{error}</div>:null}
      <Auth />
        </div>
    )
}

export default Login;
