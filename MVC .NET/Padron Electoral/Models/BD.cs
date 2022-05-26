using System;
using System.Data.SqlClient;
using Dapper;
using TP10.Models;
using System.Linq;
using System.Collections.Generic;
using System.Data;

namespace TP10.Models
{
    public static class BD
    {
        private static string _connectionString = @"server_name\SQLEXPRESS ; DataBase=BDPadron;Trusted_Connection=True;";

        public static Persona ConsultaPadron(int dni){
            Persona unaPersona = null;
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sql = "SELECT * FROM Personas WHERE DNI = @pdni";
                unaPersona = db.QueryFirstOrDefault<Persona>(sql, new{pdni = dni});
                return unaPersona;
            }
        }

        public static Establecimiento ConsultaEstablecimiento(int establecimiento){
            Establecimiento unEstablecimiento = null;
            using(SqlConnection db = new SqlConnection(_connectionString)){

                string sql = "SELECT * FROM Establecimiento WHERE IdEstablecimiento = @pestablecimiento";

                unEstablecimiento = db.QueryFirstOrDefault<Establecimiento>(sql, new{pestablecimiento = establecimiento});
                return unEstablecimiento;
            }
        }

        public static PersonaEstablecimiento consultaPersonaEstablecimiento(int id){
            PersonaEstablecimiento unaPersonaEstablecimiento = null;
            using(SqlConnection db = new SqlConnection(_connectionString)){

                string sql = "SELECT * FROM Establecimiento INNER JOIN Personas ON Establecimiento.idEstablecimiento = Personas.idEstablecimiento WHERE IdEstablecimiento = @pEstablecimiento";

                unaPersonaEstablecimiento = db.QueryFirstOrDefault<PersonaEstablecimiento>(sql, new{pEstablecimiento = id});
                return unaPersonaEstablecimiento;
            }
        }

        public static bool Votar(int dni, int nroTramite){
            int registrosModificados = 0;
            DateTime today = DateTime.Now;
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sql = "UPDATE Personas SET voto = 'True', fyhVoto = @pToday WHERE DNI = @pDni AND NumeroTramite = @pNumeroTramite";
                registrosModificados = db.Execute(sql, new {pToday = today, pDni = dni, pNumeroTramite = nroTramite});
            }
            if(registrosModificados == 0){ // controlador
                return false;
            }
            else{
                return true;
            }
        }

        public static int cantidadEstablecimientos(){
            int cantRegistros = 0;
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sql = "SELECT COUNT(Establecimiento.IdEstablecimiento) FROM dbo.Establecimiento";
                cantRegistros = db.QueryFirstOrDefault<int>(sql);
            }
            return cantRegistros;
        }

        public static int cantVotantes(){
            int votantes;
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sql = "SELECT COUNT(dni) FROM dbo.Personas";
                votantes = db.QueryFirstOrDefault<int>(sql);
            }
            return votantes;
        }

        public static List<int> cantPersonasxEstablecimiento(){
            List<int> cant = null;
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sql = "select COUNT(DNI) FROM dbo.Personas INNER JOIN dbo.Establecimiento ON Establecimiento.IdEstablecimiento = Personas.IdEstablecimiento GROUP BY Establecimiento.Nombre ORDER BY Establecimiento.Nombre DESC";
                cant = db.Query<int>(sql).ToList();
            }
            return cant;
        }
        public static int reset(){
            int registrosModificados = 0;
            using(SqlConnection db = new SqlConnection(_connectionString)){
                string sql = "UPDATE Personas SET voto = 'False', fyhVoto = NULL WHERE voto = 'True'";
                registrosModificados = db.Execute(sql);
            }
            return registrosModificados;
        }
    }
}