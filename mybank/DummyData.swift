//
//  DummyData.swift
//  mybank
//
//  Created by Tanacom on 10/27/20.
//

import Foundation


let cards = [

    Card(number: "444422224444233", type: .Silver, company: "Visa"),
    Card(number: "444422224444131", type: .Gold, company: "Visa"),
    Card(number: "444422224449961", type: .Platinum, company: "Visa"),
    Card(number: "444422224440003", type: .Gold, company: "Visa"),
    Card(number: "444422224440973", type: .Platinum, company: "Visa"),
    Card(number: "444422224421343", type: .Silver, company: "Visa"),
    Card(number: "444422224444210", type: .Gold, company: "Visa")

]


let transactions = [

    TransactionItem(date: "01 Jan 2000", time:"00:00 AM", company: "TANACOM", service:"Software", card:"444422224444131", amount: 2000.05, type:"Development"),
    
    TransactionItem(date: "01 Mar 2010", time:"00:00 AM", company: "TANACOM", service:"Designs", card:"44442222444000", amount: 4000.83, type:"Designing"),

    
    TransactionItem(date: "01 Jul 2020", time:"00:00 AM", company: "TANACOM", service:"Software", card:"444422224448461", amount: 6000.93, type:"Development"),

    
    TransactionItem(date: "01 Dec 2021", time:"00:00 AM", company: "TANACOM", service:"Animating", card:"444422224441156", amount: 6000.28, type:"Animations"),

]


let expenses = [

    Expense(month: "Jan", amount: 3000.71),
    Expense(month: "Feb", amount: 6000.80),
    Expense(month: "Mar", amount: 7000.88),
    Expense(month: "Apr", amount: 8000.93),
    Expense(month: "May", amount: 9000.99),

]
