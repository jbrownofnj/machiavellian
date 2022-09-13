import React from 'react'
import LoginForm from './LoginForm'
function LoginScreen({handleUserLoggingIn}) {
  return (
    <div className="flex flex-row h-5/6 justify-center">
      <LoginForm handleUserLoggingIn={handleUserLoggingIn}/>
    </div>
  )
}

export default LoginScreen