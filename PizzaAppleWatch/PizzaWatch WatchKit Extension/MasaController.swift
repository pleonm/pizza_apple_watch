//
//  MasaController.swift
//  PizzaWatch
//
//  Created by Pedro Leon on 24/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    var tamaño:String = ""
    var masa:String = "Delgada"

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! DataPedido
        tamaño = c.tama
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func setDelgada() {
        masa = "Delgada"
        setContexto()
    }
    
    @IBAction func setCrujiente() {
        masa = "Crujiente"
        setContexto()

    }

    @IBAction func setGruesa() {
        masa = "Gruesa"
        setContexto()

    }
    
    func setContexto() {
        let valorContexto = DataPedido(d: "Pizza", t: tamaño, m: masa, q: "", i: "")
        pushControllerWithName("IdQueso", context: valorContexto)
    }
}
