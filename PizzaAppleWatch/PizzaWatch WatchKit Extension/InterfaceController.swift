//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Pedro Leon on 24/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamaño:String = "Chica"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
    
    @IBAction func setChica() {
        tamaño = "Chica"
        setContexto()
        
    }

    @IBAction func setMediana() {
        tamaño = "Mediana"
        setContexto()
    }
    
    @IBAction func setGrande() {
        tamaño = "Grande"
        setContexto()
    }
    
    func setContexto() {
        let valorContexto = DataPedido(d: "Pizza", t: tamaño, m: "", q: "", i: "")
        pushControllerWithName("IdMasa", context: valorContexto)
    }
    
}
