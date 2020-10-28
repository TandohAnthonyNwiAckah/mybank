//
//  TransactionItem.swift
//  mybank
//
//  Created by Tanacom on 10/27/20.
//

import Foundation


struct TransactionItem: Identifiable,Hashable{
    
    let id = UUID()
    let date:String
    let time:String
    let company:String
    let service:String
    let card:String
    let amount:Float
    let type:String
    
    
}
