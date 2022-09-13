import React,{useState} from 'react'
import EntityCard from './EntityCard.js'

function Readback() {

    const [readback,setReadback]=useState([])
    const [entitySelectFormInput,setEntitySelectFormInput]= useState("")
    const [entitySelectFormTestInput,setEntitySelectFormTestInput]= useState("")

    function changeEntitySelectFormHandler(e){
        setEntitySelectFormInput(e.target.value)
    }

    function submitEntitySelectFormHandler(e){
       e.preventDefault()
        console.log(e)
        fetch(`http://127.0.0.1:3000/people`,{
            method: "POST",
            headers:{"Content-Type":"application/json"},
            body:JSON.stringify({person_emal:"johnbrownsinbox@gmail.com",})
          }).then(res=>res.json()).then(result=>{
        console.log(result)
    })
    }

    function changeEntitySelectFormTestHandler(e){
        setEntitySelectFormTestInput(e.target.value)
    }

    function submitEntitySelectFormTestHandler(e){
       e.preventDefault()
        console.log(e)
        fetch(`http://127.0.0.1:3000/${entitySelectFormTestInput}`).then(res=>res.json()).then(result=>{
        console.log(result)
    })
    }

    function readbackEntityCardMapper(entityObject){
            return (<EntityCard  key={entityObject.id} entityObject={entityObject}/>)
    }

  return (

    <div className="bg-green-300 border-green-600 border-b p-4 m-4 rounded">

        <form onSubmit={submitEntitySelectFormHandler} >
            <label className="text-center text-black-400 font-bold rounded py-2 w-2/12">entity name </label>
            <input onChange={changeEntitySelectFormHandler} value={entitySelectFormInput} type="text" ></input><br/>
            <button type="submit" className="text-center text-indigo-400 font-bold rounded py-2 w-2/12 focus:outline-none bg-gray-900 border-2 border-indigo-400">Look Up</button>
        </form>

        <form onSubmit={submitEntitySelectFormTestHandler} >
            <label className="text-center text-black-400 font-bold rounded py-2 w-2/12">entity name print only </label>
            <input onChange={changeEntitySelectFormTestHandler} value={entitySelectFormTestInput} type="text" ></input><br/>
            <button type="submit" className="text-center text-indigo-400 font-bold rounded py-2 w-2/12 focus:outline-none bg-gray-900 border-2 border-indigo-400">Look Up</button>
        </form>

        {readback[0]?readback.map(readbackEntityCardMapper):null}

    </div> 

  )
}

export default Readback