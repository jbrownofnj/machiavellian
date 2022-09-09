import React from 'react'
import {Routes,Route,} from "react-router-dom";
import Terminal from "./components/Terminal.js"
import App from "./App.js"
import GameScreen from "./components/GameScreen.js"
import WelcomeScreen from './components/WelcomeScreen.js';
import LoginScreen from './components/LoginScreen.js';

function Router() {
  return (
    <Routes> 
      <Route path="/" element={<App/>}>
        <Route path="/gameScreen" element={<GameScreen/>}/>
        <Route path="/loginScreen" element={<LoginScreen/>}/>
        <Route index element={<WelcomeScreen/>}/>
      </Route>
      <Route path="/terminal" element={<Terminal/>}/>
    </Routes>
  )
}

export default Router