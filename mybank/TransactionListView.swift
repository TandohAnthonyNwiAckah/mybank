//
//  TransactionListView.swift
//  mybank
//
//  Created by Tanacom on 10/28/20.
//

import SwiftUI

struct TransactionListView: View {
    
    
    @Binding var currentIndex : Int
    
    @ObservedObject var cardManager : CardManager
     
    
    
    
    var body: some View {
  
        ScrollView {
            
            LazyVStack {
                
                ForEach(
                    getListHeaders(), id:\.self) { date in
                    
                    ListHeader(title: self.cardManager.getModifiedDate(date: date))
                    
                    
                    ForEach(getTransactions(date: date),id:\.self) {
                        
                        transition in
                        
                        TransactionListRow(transaction: transition, isLast: cardManager.lastTransactionId == transition.id)
                        
                    }
                    
                }
            }
        }
        
    }
    
    func getTransactions(date: String) ->[TransactionItem]{
        
        return self.cardManager.getTransactions(for: date, number: cards[currentIndex].number)
        
    }
    
    
    func getListHeaders() -> [String]{
   
        return self.cardManager.getUniqueDates(for: cards[currentIndex].number)
        
    }
    
    

}







