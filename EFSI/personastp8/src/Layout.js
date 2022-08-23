import { Link, Outlet } from "react-router-dom";

function Layout() {
  return (
    <>
      <nav>
        <Link to={"/Home"}><p>Home</p></Link>
        <Link to={"/Estadisticas"}><p>Estadisticas</p></Link>
        <Link to={"/Contacto"}><p>Contacto</p></Link>
      </nav>
      <Outlet/>
    </>
  );
}

export default Layout;