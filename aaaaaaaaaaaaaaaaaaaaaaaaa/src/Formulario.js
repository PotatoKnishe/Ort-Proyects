import React, { useState } from "react";

function Formulario(props) {
  const [nombreMascota, setNombreMascota] = useState("");
  const [nombreDuenio, setNombreDuenio] = useState("");
  const [fecha, setFecha] = useState("");
  const [hora, setHora] = useState("");
  const [sintomas, setSintomas] = useState("");
  const [id, setId] = useState(0);

  const pushearCita = (e) => {
    setId(id + 1);
    props.citas.push([nombreMascota,nombreDuenio,fecha,hora,sintomas]);
  };
  return (
    <>
      <h2>Crear mi cita</h2>
      <label for="nmas">Nombre Mascota</label><br></br>
      <input onChange={(e) => setNombreMascota(e.target.value)} type="text" id="nmas"></input><br></br>
      <label for="ndue">Nombre Dueño</label><br></br>
      <input onChange={(e) => setNombreDuenio(e.target.value)} type="text" id="ndue"></input><br></br>
      <label for="ifecha">Fecha</label><br></br>
      <input onChange={(e) => setFecha(e.target.value)} type="text" id="ifecha"></input><br></br>
      <label for="ihora">Hora</label><br></br>
      <input onChange={(e) => setHora(e.target.value)} type="text" id="ihora"></input><br></br>
      <label for="isintomas">Sintomas</label><br></br>
      <input onChange={(e) => setSintomas(e.target.value)} type="text" id="isintomas"></input><br></br>
      <button onClick={() => pushearCita()}>Agregar cita</button>
    </>
  );
};
  
export default Formulario;