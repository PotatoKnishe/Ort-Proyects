using System;

namespace TP10.Models
{
    public class PersonaEstablecimiento
    {
        private int _DNI;
        private string _NombrePersona;
        private string _Apellido;
        private int _NumeroTramite;
        private int _IdEstablecimiento;
        private bool _voto;
        private string _NombreEstablecimiento;
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

        public string NombrePersona { 
            get {
                return _NombrePersona;
            }
            set {
                _NombrePersona = value;
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

        public int DNI { 
            get {
                return _DNI;
            }
            set {
                _DNI = value;
            }
        }

        public string NombreEstablecimiento { 
            get {
                return _NombreEstablecimiento;
            }
            set {
                _NombreEstablecimiento = value;
            }
        }
        
        public string Apellido { 
            get {
                return _Apellido;
            }
            set {
                _Apellido = value;
            }
        } 

        public int NumeroTramite { 
            get {
                return _NumeroTramite;
            }
            set {
                _NumeroTramite = value;
            }
        }  

        public bool voto { 
            get {
                return _voto;
            }
            set {
                _voto = value;
            }
        }

        public PersonaEstablecimiento(){

        }

        public PersonaEstablecimiento(string NombrePersona, int DNI, string Apellido, int NumeroTramite, int IdEstablecimiento, bool voto, string NombreEstablecimiento, string Direccion, string Localidad)
        {
            _NombrePersona=NombrePersona;
            _DNI = DNI;
            _Apellido = Apellido;
            _NumeroTramite = NumeroTramite;
            _IdEstablecimiento=IdEstablecimiento;
            _voto=voto;
            _NombreEstablecimiento = NombreEstablecimiento;
            _Direccion = Direccion;
            _Localidad = Localidad;
        }
    }
}