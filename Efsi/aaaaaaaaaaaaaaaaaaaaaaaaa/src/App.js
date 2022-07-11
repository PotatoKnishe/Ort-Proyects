import logo from './logo.svg';
import './App.css';
import Formulario from "./Formulario"
import ListadoCitas from"./ListadoCitas"


function App() {
  const listado = []
  return (
    <>
    <Formulario citas={listado}></Formulario>
    <ListadoCitas citas={listado}></ListadoCitas>
    </>
  );
}

export default App;