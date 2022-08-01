import logo from './logo.svg';
import './App.css';
import Formulario from "./Formulario"
import ListadoCitas from"./ListadoCitas"
import { useState } from 'react';


function App() {

  const [listado, setListado] = useState([]);

  function guardarDatos(){}

  return (
    <>
    <Formulario citas={listado}></Formulario>
    <ListadoCitas citas={listado}></ListadoCitas>
    </>
  );
}

export default App;