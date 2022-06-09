import React from 'react'
import {useState} from 'react'

function CounterReal() {
  const [num, setNum] = useState(0)

  function handleClick() {
    let newNum = num + 1;
    setNum(newNum);
  }

  return (
    <div>
      <h1>Components</h1>
      <p>You can use components even</p>
      <button onClick={handleClick}>CLICK</button>
      <p>
        <strong>You have clicked me {num} times...</strong>
      </p>
    </div>
  )
}

export default CounterReal