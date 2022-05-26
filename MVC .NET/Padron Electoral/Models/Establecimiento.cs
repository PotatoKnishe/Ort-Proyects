using System;
using TP10.Models;
namespace TP10.Models
{
    public class Establecimiento
    {
        private int _IdEstablecimiento;
        private string _Nombre;
        private string _Direccion;
        private string _Localidad;

        public int IdEstablecimiento { 
            get {
                return _IdEstablecimiento;
            }
            set {
                _IdEstablecimiento= value;
            }
        }

        public string Nombre { 
            get {
                return _Nombre;
            }
            set {
                _Nombre = value;
            }
        }

        public string Direccion { 
            get {
                return _Direccion;
            }
            set {
                _Direccion = value;
            }
        }

        public string Localidad { 
            get {
                return _Localidad;
            }
            set {
                _Localidad = value;
            }
        }

        public Establecimiento(string Nombre, int IdEstablecimiento, string Direccion, string Localidad) {
            _Nombre = Nombre;
            _IdEstablecimiento = IdEstablecimiento;
            _Direccion = Direccion;
            _Localidad = Localidad;
        }

        public Establecimiento() {
            
        }
    }
}