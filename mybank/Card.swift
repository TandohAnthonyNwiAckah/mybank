//
//  Card.swift
//  mybank
//
//  Created by Tanacom on 10/27/20.
//

import Foundation


struct Card:Identifiable{
    
    let id = UUID()
    let number:String
    let type:CardType
    let company:String
    let selected:Bool = false
    
    
    func getLastFourDigits() -> String {
        return String(number.suffix(4))
    }
    
    
    
}
