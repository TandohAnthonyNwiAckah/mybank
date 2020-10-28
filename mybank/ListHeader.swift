//
//  ListHeader.swift
//  mybank
//
//  Created by Tanacom on 10/28/20.
//

import SwiftUI

struct ListHeader: View {
    
    
    let title : String
    
    
    var body: some View {
       
        HStack {
            
            Text(title)
                .font(.caption)
                .foregroundColor(ColorConstants.secondary)
                .padding(.leading,20)
            
             Spacer()
            
        }
        
        
    }
    
    

}

