//
//  CardInfoView.swift
//  mybank
//
//  Created by Tanacom on 10/28/20.
//

import SwiftUI

struct CardInfoView: View {
    var body: some View {
     
        
        VStack(alignment: .leading){
            ProgressView()
            
            
            HStack(alignment: .firstTextBaseline, spacing: 0) {
                Text("$")
                
                font(.system(size: 30,weight : Font.Weight.bold,design:Font.Design.rounded))
                    .foregroundColor(ColorConstants.secondary
                    )
                                
                Text("9000")
                font(.system(size: 40,weight : Font.Weight.bold,design:Font.Design.rounded))
                    .foregroundColor(.white)
                    .padding(.leading,10)
                
                Text(".99")
                font(.system(size: 20,weight : Font.Weight.bold,design:Font.Design.rounded))
                    .foregroundColor(ColorConstants.secondary
                    )
                   
            }
            
            HStack(alignment: .firstTextBaseline,spacing:20) {
            
                VStack(alignment :.leading,spacing :30){
                    
                    Image(systemName: "creditcard.fill")
                    
                    Image(systemName: "banknote.fill")
                    
                    Image(systemName: "dot.radiowave.write")
                }
                .foregroundColor(.secondary)
                
                
                VStack(alignment :.leading,spacing :24){
                    
                    Text("Bank Card")
                    
                    Text("Bank Account")
                    
                    Text("Pay")
                    
                }
                .foregroundColor(.white)
                
                
                
                
            }
            
            
            
        }
        
        
        
        
        
        
    }
    
    
}



