import React from 'react'
import {Link} from "react-router-dom"

function HeaderNavBar() {
  return (
    <div className="flex flex-row bg-zinc-300 h-max gap-2" >
      <Link className="bg-amber-400 border-4 border-color-white" to="gameScreen">Game Screen</Link><br/>
      <Link className="bg-amber-400 border-4 border-color-white" to="/">Welcome Screen</Link>
      <Link className="bg-amber-400 border-4 border-color-white" to="loginScreen">Login Screen</Link>
    </div>
  )
}

export default HeaderNavBar