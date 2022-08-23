import Persona from "./Persona";
import Personas from "./Personas";
import { useParams } from "react-router-dom";


function PersonaPagina() {
  const {id} = useParams();
  return (
    <>
    <ul>{
      <Persona persona={Personas[id]} ></Persona>
    }</ul>
    </>
  );
}

export default PersonaPagina;