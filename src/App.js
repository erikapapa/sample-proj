
import React, { useState } from 'react';

function App() {

  const [lblClass, setLblClass] = useState('d-none');

  const btnOnClick = () => {
    if (lblClass === 'd-none') {
      setLblClass('d-block')
    }
    else {
      setLblClass('d-none')
    }
  }

  return (
    <div className='m-5'>
      Hello there <br/><br/>

      <button id="btn-here" onClick={btnOnClick}>click here</button> <br/><br/>

      <label className={`${lblClass}`}> haha </label>
      
    </div>

    
  );
}

export default App;
