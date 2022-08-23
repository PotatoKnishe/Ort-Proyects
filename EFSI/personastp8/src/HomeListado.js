import { Link } from "react-router-dom";
import Personas from "./Personas";
import "./HomeListado.css"

function HomeListado() {
  return (
    <>
    <div class="listaPersonas">{
      Personas.map((persona,index)=>{
        return(
          <Link to={"/Persona/"+index}><h3>{persona.nombre} {persona.apellido}</h3></Link>
        )
      })
    }</div>
    </>
  );
}

export default HomeListado;