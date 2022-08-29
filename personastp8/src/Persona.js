function Persona({persona}) {
  return (
    <div>
      <li>{"Nombre: " + persona.nombre + persona.apellido}</li>
      <li> {"Email: " + persona.email} </li>
      <li> {"Edad: " + persona.edad} </li>
    </div>
  );
}

export default Persona;