import './Contacto.css';

function Contacto() {
    return (
      <div className="one-half column">
        <h2>Contactanos</h2>
        <form>
          <div class="elemForm" id="elemNombre">
            <label for="nombre">Nombre: </label>
            <input type="text" id="nombre" placeholder="John" required></input>
          </div>
          <div class="elemForm" id="elemApellido">
            <label for="apellido">Apellido: </label>
            <input type="text" id="apellido" placeholder="Doe" required></input>
          </div>
          <div class="elemForm" id="elemMail">
            <label for="mail">Email: </label>
            <input type="email" id="mail" placeholder="johndoe@gmail.com" required></input>
          </div>
          <div class="elemForm" id="elemEdad">
            <label for="edad">Edad: </label>
            <input type="number" id="edad" min="18" max="100" placeholder="21" required></input>
          </div>
        </form>
      </div>
    )
}
export default Contacto;
