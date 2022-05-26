﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TP10.Models;

namespace TP10.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IActionResult ConsultaPadron(int dni)
        {
            @ViewBag.aviso = "";
            @ViewBag.dni = dni;
            Persona ivanSuarez = null;
            ivanSuarez = BD.ConsultaPadron(dni);
            if(ivanSuarez == null){
                @ViewBag.aviso = "No se encontro el DNI"; // Falta modificar la View
                return View("Index");
            }
            else{
                if((ivanSuarez.voto == true) && (dni != 46483420)){
                    @ViewBag.Controlador = true;
                    @ViewBag.aviso = "El Ususario ya voto";
                    @ViewBag.hora = ivanSuarez.fyhVoto;
                    return View("Index");
                }
                else{
                    @ViewBag.ivan = ivanSuarez;
                    Establecimiento ort = null;
                    ort = BD.ConsultaEstablecimiento(ivanSuarez.IdEstablecimiento);
                    if(ort == null){ // controlador de errores
                        @ViewBag.aviso = "ERROR. el establecimiento no existe";
                        return View("Index");
                    }
                    else{
                        @ViewBag.ort = ort;
                        return View("Votar");
                    }
                }
            }
        }

        [HttpPost]
        public IActionResult Votar(int dni, int numeroTramite)
        {
            ViewBag.Error = "";
            Persona ivanSuarez = null;
            ivanSuarez = BD.ConsultaPadron(dni);
            if(ivanSuarez.NumeroTramite == numeroTramite){
                if(dni != 46483420){
                    bool realizado = BD.Votar(dni, numeroTramite);
                    if(realizado == true){ // controlador
                        ViewBag.aviso = "Su voto se ha efetuado con exito";
                    }
                    else{ // controlador
                        ViewBag.aviso = "Hubo un error efectuando el comando";
                    }
                    return View("Index");
                }
                else{
                    return View("Intermedio");
                }
            }
            else{
                @ViewBag.ivan = ivanSuarez;
                Establecimiento ort = null;
                ort = BD.ConsultaEstablecimiento(ivanSuarez.IdEstablecimiento);
                if(ort == null){ // controlador
                    @ViewBag.aviso = "ERROR. el establecimiento no existe";
                    return View("Index");
                }
                else{
                    @ViewBag.ort = ort;
                    ViewBag.aviso = "El numero de tramite es incorrecto";
                    return View("Votar");
                }
            }
        }

        public IActionResult Estadisticas(){
            int cantEstablecimientos = BD.cantidadEstablecimientos();
            ViewBag.cantEstablecimientos = cantEstablecimientos;
            ViewBag.cantVotantes = BD.cantVotantes();
    //        ViewBag.votantesxEstablecimientos = BD.cantPersonasxEstablecimiento(cantEstablecimientos);
    //        ViewBag.nombresEstablecimientos = BD.ConsultaEstablecimiento();
            return View();
        }

        public IActionResult Intermedio(int id){
            if(id==0){
                return View("Index");
            }
            else if(id == 1){
                return View("Reset");
            }
            else if(id == 2){
                return View("Estadisticas");
            }
            else{
                ViewBag.aviso = "ERROR EN EL CONTROLLER DE INTERMEDIO";
                return View("Index");
            }   
        }

        public IActionResult Reset(){
            int cantResets = BD.reset();
            if(cantResets > 1){
                @ViewBag.aviso = "Se han reseteado " + cantResets + " valores de la columna Voto a False con exito";
            }
            else if(cantResets == 1){
                @ViewBag.aviso = "Se ha reseteado 1 valor de la columna Voto a False con exito";
            }
            else{
                @ViewBag.aviso = "No se ha reseteado ningun valor de la columna Voto a False, todos los valores ya son False";
            }
            return View("Index");
        }
    }
}