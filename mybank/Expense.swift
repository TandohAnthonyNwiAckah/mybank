//
//  Expense.swift
//  mybank
//
//  Created by Tanacom on 10/27/20.
//

import Foundation

struct Expense:Identifiable{
    
    let id = UUID()
    let month:String
    let amount:Float
    var selected:Bool = false
    
    
    
    
}
