import './App.css';
import AppHeader from "./components/AppHeader.js"
import {Outlet} from "react-router-dom"

function App() {
  return (
    <div className="container mx-auto px-1 bg-gray-400 h-screen">
      <AppHeader/>
      <Outlet/>
    </div>
  );
}

export default App;
