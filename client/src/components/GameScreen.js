import React from 'react'
import GameControlsBar from './GameControlsBar'
import GameStateReadback from './GameStateReadback'

function GameScreen() {
  return (
    <div className="flex flex-row justify-start bg-red-500 h-5/6">
            <GameControlsBar/>
            <GameStateReadback/>
    </div>
  )
}

export default GameScreen