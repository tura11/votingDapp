import logo from './logo.svg';
import './App.css';
import React, {useState, useEffect} from 'react';
import {ethers} from 'ethers';

function App() {

const contractAdress =''

const [provider, setProvider] = useState(null);
const [signer, setSigner] = useState(null);
const [contract, setContract] = useState(null);
const [account, setAccount] = useState("");


useEffect(() =>{
  const init = async () =>{
      if(typeof window.ethereum !=='undefined'){
        const provider = new ethers.providers.Web3Provider(window.ethereum)
        setProvider(provider);
      }
  }
})




  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
