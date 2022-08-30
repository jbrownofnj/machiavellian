import React from 'react'
import {Routes,Route,} from "react-router-dom";
import App from './App';
import ControlPanel from './components/ControlPanel';
function Router() {
  return (
    <Routes>
        <Route path="/controlPanel" element={<ControlPanel/>}>  
        </Route>
        <Route index element={<App/>}/>
    </Routes>
  )
}

export default Router