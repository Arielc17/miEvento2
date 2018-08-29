import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

import { ContratosService } from "../../providers/contratos/contratos";
import { ContratoPage } from "../index.paginas";


@IonicPage()
@Component({
  selector: 'page-busqueda',
  templateUrl: 'busqueda.html',
})
export class Busqueda {

  productoPage = ContratoPage;

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private _cts:ContratosService) {
  }


  buscar_productos(ev: any){

    let valor = ev.target.value;
    console.log(valor);

    this._cts.buscar_contrato( valor );
  }



}
