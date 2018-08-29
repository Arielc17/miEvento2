import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';

import { ContratosService } from "../../providers/contratos/contratos";
import { PorCategoriasPage } from "../index.paginas";

@Component({
  selector: 'page-categorias',
  templateUrl: 'categorias.html',
})
export class CategoriasPage {

  porCategorias = PorCategoriasPage

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private _cts:ContratosService ) {
  }


}
