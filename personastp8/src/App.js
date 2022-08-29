import './App.css';
import HomeListado from './HomeListado';
import Layout from './Layout';
import PersonaPagina from './PersonaPagina';
import Estadisticas from './Estadisticas';
import Contacto from './Contacto';
import { BrowserRouter, Routes, Route } from "react-router-dom";

function App() {
  return (
    <>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route path="/home" element={<HomeListado />}></Route>
          <Route path="/Persona/:personaId" element={<PersonaPagina />}></Route>
          <Route path="/Estadisticas" element={<Estadisticas />}></Route>
          <Route path="/Contacto" element={<Contacto />}></Route>
        </Route>
      </Routes>
    </BrowserRouter>
    </>

  );
}

export default App;
