import Cita from "./Cita"

function ListadoCitas(props) {
    let citas=props.citas
    return (
        <div className="one-half column">
            <h2>Administra tus citas</h2>
            {
                <Cita listado = {citas}>
                    citass = {citas},
                    nombreMascota = {citas.nombreMascota},
                    nombreDuenio={citas.nombreDuenio},
                    fecha={citas.fecha},
                    hora={citas.hora},
                    descripcion={citas.descripcion},
                    setCitas={citas.setCitas},
                </Cita>
                /*citas.map(sita) => {
                    return(
                        <Cita>
                            citass = {citas},
                            nombreMascota = {citas.nombreMascota},
                            nombreDuenio={sita.nombreDuenio},
                            fecha={sita.fecha},
                            hora={sita.hora},
                            descripcion={sita.descripcion},
                            setCitas={sita.setCitas},
                        </Cita>
                    );
                };*/
                /*citas.map(cita, index) => {
                    return(
                        <Cita
                            citass = {citas}
                            nombreMascota = {citas.nombreMascota}
                            nombreDuenio={sita.nombreDuenio}
                            fecha={sita.fecha}
                            hora={sita.hora}
                            descripcion={sita.descripcion}
                            setCitas={sita.setCitas}
                            id = {index}
                            listado = {citas}
                        >
                        </Cita>
                    );
                };*/
            };
        </div>
    );
}
  
export default ListadoCitas;