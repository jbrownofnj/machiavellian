import React,{useState,useEffect} from 'react'
import {Routes,Route,} from "react-router-dom";
import Terminal from "./components/Terminal.js"
import App from "./App.js"
import GameScreen from "./components/GameScreen.js"
import WelcomeScreen from './components/WelcomeScreen.js';
import LoginScreen from './components/LoginScreen.js';

function Router() {
  const [loggedInUser,setLoggedInUser]=useState({})
  function handleUserLoggingIn(userObject){
    console.log(userObject)
    setLoggedInUser(userObject)
  }
  useEffect(()=>{




    fetch(`http://127.0.0.1:3000/loggedInUser`).then(res=>{
      if(res.ok){
        res.json().then(responseObject=>{
          if(responseObject.person_email){
            handleUserLoggingIn(responseObject)
            console.log("loggedInUser operated")
          }
          else{
            console.log(responseObject)
          }
        })
      }
      else{
        console.log(res)
      }
    })






  },[])
  return (
    <Routes> 
      <Route path="/" element={<App loggedInUser={loggedInUser}/>}>
        <Route path="/gameScreen" element={<GameScreen/>}/>
        <Route path="/loginScreen" element={<LoginScreen handleUserLoggingIn={handleUserLoggingIn}/>}/>
        <Route index element={<WelcomeScreen/>}/>
      </Route>
      <Route path="/terminal" element={<Terminal/>}/>
    </Routes>
  )
}

export default Router