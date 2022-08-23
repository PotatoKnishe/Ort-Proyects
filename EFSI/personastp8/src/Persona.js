function Persona({persona}) {
  return (
    <div>
      <li>{"Nombre: " + persona.nombre}</li>
      <li> {"Apellido: " + persona.apellido} </li>
      <li> {"Email: " + persona.email} </li>
      <li> {"Edad: " + persona.edad} </li>
    </div>
  );
}

export default Persona;