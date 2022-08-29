import Persona from "./Persona";
import Personas from "./Personas";
import { useParams } from "react-router-dom";


function PersonaPagina() {
  const {personaId} = useParams();
  return (
    <>
    <ul>{
      <Persona persona={Personas[personaId]} ></Persona>
    }</ul>
    </>
  );
}

export default PersonaPagina;