using System;

namespace TP10.Models
{
    public class Persona
    {
        private int _DNI;
        private string _Nombre;
        private string _Apellido;
        private int _NumeroTramite;
        private int _IdEstablecimiento;
        private bool _voto;
        private DateTime _fyhVoto;

        public DateTime fyhVoto{
            get{
                return _fyhVoto;
            }
            set{
                _fyhVoto = value;
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

        public string Nombre { 
            get {
                return _Nombre;
            }
            set {
                _Nombre = value;
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

        public int IdEstablecimiento { 
            get {
                return _IdEstablecimiento;
            }
            set {
                _IdEstablecimiento = value;
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

        public Persona(){

        }

        public Persona(string Nombre, int DNI, string Apellido, int NumeroTramite, int IdEstablecimiento, bool voto, DateTime fyhVoto)
        {
            _Nombre=Nombre;
            _DNI = DNI;
            _Apellido = Apellido;
            _NumeroTramite = NumeroTramite;
            _IdEstablecimiento=IdEstablecimiento;
            _voto=voto;
            _fyhVoto = fyhVoto;
        }
    }
}