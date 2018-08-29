import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { ContratosService } from "../../providers/contratos/contratos";
import { ContratoPage } from "../contrato/contrato";

@Component({
  selector: 'page-por-categorias',
  templateUrl: 'por-categorias.html',
})
export class PorCategoriasPage {

  contratoPage = ContratoPage;

  categoria:any = {};

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private _cts:ContratosService ) {

    this.categoria = this.navParams.get("categoria");

    this._cts.cargar_por_categoria( this.categoria.id );

  }


}
