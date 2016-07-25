//
//  IngredientesController.swift
//  PizzaWatch
//
//  Created by Pedro Leon on 24/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import WatchKit
import Foundation

class IngredientesController: WKInterfaceController {
    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes = [String]()
    var cont:Int = 0
    
    @IBOutlet var in1: WKInterfaceSwitch!
    @IBOutlet var in2: WKInterfaceSwitch!
    @IBOutlet var in3: WKInterfaceSwitch!
    @IBOutlet var in4: WKInterfaceSwitch!
    @IBOutlet var in5: WKInterfaceSwitch!
    @IBOutlet var in6: WKInterfaceSwitch!
    @IBOutlet var in7: WKInterfaceSwitch!
   
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! DataPedido
        tamaño = c.tama
        masa = c.masa
        queso = c.queso
        print(tamaño + masa + queso)
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

    @IBAction func ing1(value: Bool) {
     
         if(value){
            if (cont<5) {
                setIngrediente("jamón")
            } else {
                in1.setOn(false)
            }
         } else {
            checkAndDelete("jamón")
         }
       
    }
    @IBAction func ing2(value: Bool) {
        if(value){
            if (cont<5) {
                setIngrediente("pepperoni")
            } else {
              in2.setOn(false)
            }
        } else {
            checkAndDelete("pepperoni")
        }
    }
    @IBAction func ing3(value: Bool) {
        if(value){
            if (cont<5) {
                setIngrediente("pavo")
            } else {
                in3.setOn(false)
            }
        } else {
            checkAndDelete("pavo")
        }
    }
    @IBAction func ing4(value: Bool) {
        if(value){
            if (cont<5) {
                setIngrediente("salchicha")
            } else {
                in4.setOn(false)
            }
        } else {
            checkAndDelete("salchicha")
        }
    }
    @IBAction func ing5(value: Bool) {
        if(value){
            if (cont<5) {
                setIngrediente("aceituna")
            } else {
                in5.setOn(false)
            }
        } else {
            checkAndDelete("aceituna")
        }
    }
    @IBAction func ing6(value: Bool) {
        if(value){
            if (cont<5) {
                setIngrediente("cebolla")
            } else {
                in6.setOn(false)
            }
        } else {
            checkAndDelete("cebolla")
        }
    }
    @IBAction func ing7(value: Bool) {
        if(value){
            if (cont<5) {
                setIngrediente("pimiento")
            } else {
                in7.setOn(false)
            }
        } else {
            checkAndDelete("pimiento")
        }
    }

    func setIngrediente(ingre:String) {
        ingredientes.append(ingre)
        cont = cont + 1
        for item in ingredientes {
            print(item)
        }

        
    }
    func checkAndDelete(ingr:String) {
        for i in 0 ..< ingredientes.count {
            if(ingredientes[i] == ingr) {
                ingredientes.removeAtIndex(i)
                cont = cont - 1
                for item in ingredientes {
                    print(item)
                }
                break
            }
        }
    }
    
    @IBAction func confirma() {
        if (ingredientes.count>0) {
            var ing:String = ingredientes[0]
            for i in 1 ..< ingredientes.count {
                ing += ", "+ingredientes[i]
            }
            
            let valorContexto = DataPedido(d: "Pizza", t: tamaño, m: masa, q: queso, i: ing)
            pushControllerWithName("IdConfirma", context: valorContexto)
        }
        
    }
    
}
