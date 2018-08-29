import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';

import { ContratosService } from "../../providers/contratos/contratos";
import { CarritoService } from "../../providers/carrito/carrito";

import { ContratoPage } from "../contrato/contrato";
import { UsuarioService } from "../../providers/usuario/usuario";

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  productoPage = ContratoPage;

  constructor( public navCtrl: NavController,
               private _ps: ContratosService,
               private _cs:CarritoService,
               private _us:UsuarioService ) {

  }


  siguiente_pagina( infiniteScroll ){

    this._ps.cargar_todos()
          .then( ()=>{

            infiniteScroll.complete();

          })


  }

}
