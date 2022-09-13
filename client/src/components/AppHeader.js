import React from 'react'
import HeaderNavBar from "./HeaderNavBar"
function AppHeader({loggedInUser}) {
  return (
      <div className="flex flex-row bg-blue-500 h-1/6 justify-end">
        {loggedInUser.person_email?<p>{loggedInUser.person_email}</p>:null}
        <HeaderNavBar/>
      </div>
  )
}

export default AppHeader