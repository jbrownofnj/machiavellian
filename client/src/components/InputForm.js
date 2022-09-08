import React from 'react'
function InputForm() {
    function onSubmitPeopleFormHander(e){
        e.preventDefault()
        console.log(e)
    }
  return (
    <form className="bg-red-300 border-green-600 border-b p-4 m-4 rounded">
        <label htmlFor="palyerEmail">Player Email</label><br/>
        <input type="email" id="playerEmail"></input><br/>
        <label htmlFor="palyerPassword">Player Password</label><br/>
        <input type="text" id="playerPassword"></input><br/>
        <label htmlFor="playerConfirmationToken">Player Confirmation Token</label><br/>
        <input type="text" id="playerConfirmationToken"></input><br/><br/><br/>
        <label htmlFor="playerEmailConfirmed">Player Email Confirmed bool</label><br/>
        <input type="checkbox" id="playerConfirmationToken"></input><br/><br/><br/>
        <button onSubmit={onSubmitPeopleFormHander} type="submit" className="text-center text-indigo-400 font-bold rounded py-2 w-2/12 focus:outline-none bg-gray-900 border-2 border-indigo-400">Submit</button><br/>
    </form>
  )
}

export default InputForm