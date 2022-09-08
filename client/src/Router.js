import React from 'react'
import {Routes,Route,} from "react-router-dom";
import Terminal from "./components/Terminal.js"
import App from "./App.js"
function Router() {
  return (
    <Routes>
        <Route path="/terminal" element={<Terminal/>}/>
        <Route path="/*" element={<App/>}/>
    </Routes>
  )
}

export default Router