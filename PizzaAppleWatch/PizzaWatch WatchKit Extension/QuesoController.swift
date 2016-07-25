//
//  QuesoController.swift
//  PizzaWatch
//
//  Created by Pedro Leon on 24/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = "Mozarela"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! DataPedido
        tamaño = c.tama
        masa = c.masa
        print(tamaño + masa)
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

    @IBAction func setMozarela() {
        queso = "Mozarela"
        setContexto()
    }
    @IBAction func setCheddar() {
        queso = "Cheddar"
        setContexto()
    }
    @IBAction func setParmesano() {
        queso = "Paremesano"
        setContexto()
    }
    @IBAction func setSinQueso() {
        queso = "Sin Queso"
        setContexto()
    }
    
    func setContexto() {
        let valorContexto = DataPedido(d: "Pizza", t: tamaño, m: masa, q: queso, i: "")
        pushControllerWithName("IdIngre", context: valorContexto)
    }
}
