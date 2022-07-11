import Cita from "./Cita"

function ListadoCitas(props) {
    let citas=props.citas
    return (
        <h2>Administra tus citas</h2>
        {
            citas.map{
                (cita) => {
                    return{
                        <Cita
                            citass = {citas}
                            nombreMascota = {cita.nombreMascota}
                            nombreDuenio={cita.nombreDuenio}
                            fecha={cita.fecha}
                            hora={cita.hora}
                            descripcion={cita.descripcion}
                            setCitas={cita.setCitas}
                        >
                        </Cita>
                    }
                }
            }

        }
    );
  }
  
  export default ListadoCitas;