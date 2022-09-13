import React,{useState} from 'react'

function LoginForm({handleUserLoggingIn}) {

  const [userEmail,setUserEmail]=useState("")
  const [userPassword,setUserPassword]=useState("")

  function handleSubmitLoginForm(e){
    e.preventDefault()
    fetch(`http://127.0.0.1:3000/sessions`,{
      method: "POST",
      headers:{"Content-Type":"application/json"},
      body:JSON.stringify({user_email:userEmail, password:userPassword})
    }).then(res=>{
      if(res.ok){
        res.json().then(responseObject=>{
          if(responseObject.person_email){
            handleUserLoggingIn(responseObject)
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
  }
  function handleUserEmailChange(e){
    setUserEmail(e.target.value)
  }
  function handleUserPasswordChange(e){
    setUserPassword(e.target.value)
  }

  return (
    <div className="m-auto w-1/3 border-2 border-dotted border-black">
      <form onSubmit={handleSubmitLoginForm} className="bg-slate-50 p-5 border-4 border-solid border-md border-gray-400">
    <div className="flex flex-wrap mx-10 m-auto">
      <div className="w-full md:w-1/2 px-3 mb-6 md:mb-0">
        <label className="block uppercase tracking-wide text-gray-700 text-xl font-bold mb-2" htmlFor="userEmail">
          User Email
        </label>
        <input onChange={handleUserEmailChange} value={userEmail} className="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="userEmail" type="email" placeholder="something@gmail.com"/>
        <p className="text-black-500 text-l italic">only gmail accepted at this time.</p>
      </div>
      <div className="w-full px-3">
        <label className="block uppercase tracking-wide text-gray-700 text-ls font-bold mb-2" htmlFor="grid-password">
          Password
        </label>
        <input onChange={handleUserPasswordChange} value={userPassword} className="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-password" type="password" placeholder="******************"/>
        <p className="text-black-500 text-l italic">Minimum of 5 characters</p>
      </div>
    </div>
    <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline mt-3 ml-12" type="submit">
        Sign In
      </button>
  </form>
</div>
  )
}

export default LoginForm