import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

import { CarritoService } from "../../providers/carrito/carrito";

@Component({
  selector: 'page-ordenes-detalles',
  templateUrl: 'ordenes-detalles.html',
})
export class OrdenesDetallesPage {

  orden:any = {}

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              private _cs:CarritoService ) {

    this.orden = this.navParams.get("orden");

  }

  borrar_orden( orden_id:string ){

    this._cs.borrar_orden(orden_id)
            .subscribe( data =>{

              if( data.error ){
                // manejo de errores
              }else{
                this.navCtrl.pop();
              }
        })


  }


}
