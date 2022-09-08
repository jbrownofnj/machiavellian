import React from 'react'
import {Routes,Route,} from "react-router-dom";
import Terminal from "./components/Terminal.js"

function Router() {
  return (
    <Routes>
        <Route index element={<Terminal/>}/>
    </Routes>
  )
}

export default Router