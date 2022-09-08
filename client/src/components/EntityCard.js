import React from 'react'

function EntityCard({entityObject}) {
  
  
  function entityObjectKeyValueArrayMaker (inputObject){
    console.log(typeof inputObject)
    let entityattributeKey=0
    let entityKeyValuePairSpanArray=[]
    function unpackNestedObjects(){
      for (let entityKey in entityObject ){
        if (typeof entityObject[entityKey] == "object")
        {
          unpackNestedObjects(entityObject[entityKey])
        }
        else{
        entityKeyValuePairSpanArray.push(<p key={entityattributeKey}> {entityKey}: {entityObject[entityKey].toString()}</p>)
        entityattributeKey++
        }
      }
      return (entityKeyValuePairSpanArray)
    }
    unpackNestedObjects(inputObject)
    return (entityKeyValuePairSpanArray)
    
  }

  return (
    <div className="border-8 border-red-500">
      {entityObjectKeyValueArrayMaker(entityObject)}
    </div>
  )
}

export default EntityCard