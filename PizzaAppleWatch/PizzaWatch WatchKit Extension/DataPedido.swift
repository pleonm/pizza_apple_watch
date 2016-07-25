//
//  DataPedido.swift
//  PizzaWatch
//
//  Created by Pedro Leon on 24/07/16.
//  Copyright © 2016 Innova Digital Studio. All rights reserved.
//

import WatchKit

class DataPedido: NSObject {
    var desc: String = ""
    var tama:String  = ""
    var masa:String = ""
    var queso:String = ""
    var ingre:String = ""
    
    init(d:String, t:String, m:String, q:String, i:String) {
        desc = d
        tama = t
        masa = m
        queso = q
        ingre = i
    }
    
}
