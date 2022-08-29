import { Link } from "react-router-dom";
import Personas from "./Personas";

function Estadisticas() {
    let mayorEdad = [{
        "id":"0",
        "nombre":"Texto de ejemplo",
        "apellido":"Texto de ejempodou",
        "email":"nice@69420.gob.ar.com",
        "edad":"0"
      }];
    let menorEdad = [{
        "id":"0",
        "nombre":"Texto de ejemplo",
        "apellido":"Texto de ejempodou",
        "email":"nice@69420.gob.ar.com",
        "edad":"99"
      }];
    let personasMayores = []

    Personas.map((persona)=>{
        if (parseInt(persona.edad)>mayorEdad[0].edad){
            mayorEdad=[persona]
        }
        else if (parseInt(persona.edad)==mayorEdad[0].edad){
            mayorEdad.push(persona)
        }
    })

    Personas.map((persona)=>{
        if (parseInt(persona.edad)<menorEdad[0].edad){
            menorEdad=[persona]
        }
        else if (parseInt(persona.edad)==menorEdad[0].edad){
            if(persona.id != menorEdad[0].id){
                menorEdad.push(persona)
            }
        }
    })

    for (let i = 0; i < Personas.length - 1; i++) {
        if (Personas[i].edad >= 35) {
            personasMayores.push(Personas[i])
        }
    }

    /*let termino = false
    while (termino == false) {
        termino = true
        for (let i = 0; i < personasMayores.length - 1; i++) {
            if (personasMayores[i].edad > personasMayores[i + 1].edad) {
                console.log("Mayor: " + personasMayores[i].edad + "" + personasMayores[i].id)
                console.log("Menor: " + personasMayores[i+1].edad +  "" + personasMayores[i+1].id)
                console.log("")
                let aux = personasMayores[i]
                personasMayores[i] = personasMayores[i + 1]
                personasMayores[i + 1] = aux
                console.log("Menor: " + personasMayores[i].edad + personasMayores[i].id)
                console.log("Mayor: " + personasMayores[i+1].edad + personasMayores[i+1].id)
                console.log("")
                console.log("")
                console.log("")
                console.log("")
                console.log("")
                termino = false
            }
        }
    }*/

    return (
    <>
        {
            () => {
                if(menorEdad[0].edad == 6){
                    return(
                        <h3>AAAAAAAAAAA</h3>
                    );
                }
            }
        }npm install react-bootstrap bootstrap

        <ul>
            <li><h3>Persona/s mayor/es:</h3></li>
            <ol>{
                mayorEdad.map((personaMayor,index)=>{
                    return(
                        <li>{
                            <h5>{personaMayor.nombre} {" (" + personaMayor.edad + ")"}</h5>
                        }</li>
                    );
                })
            }</ol>

            <li><h3>Persona/s menor/es:</h3></li>
            <ol>{
                
                menorEdad.map((personaMenor,index)=>{
                    return(
                        <li>{
                            <h5>{personaMenor.nombre} {" (" + personaMenor.edad + ")"}</h5>
                        }</li>
                    );
                })
            }</ol>
        </ul>

        <h3>Personas mayores de 35 años: </h3>
        <ul class="scrolll">{
            Personas.map((persona,index)=>{
                if(persona.edad >= 35){
                    
                    return(<Link to={"/Persona/" + index}><h3> {persona.nombre} {" (" + persona.edad + ")"}</h3></Link>)
                }
            })
        }</ul>
        </>
    );
}

export default Estadisticas;