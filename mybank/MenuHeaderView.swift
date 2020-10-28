//
//  MenuHeaderView.swift
//  mybank
//
//  Created by Tanacom on 10/28/20.
//

import SwiftUI

struct MenuHeaderView: View {
    
    let title: String
    let imageName :String
    

    var body: some View {
      
   
        HStack {
            
            Text(title)
                .font(.system(size:24))
                .bold()
            
            Spacer()
            
            
            Button(action: {}){
                Image(systemName: imageName)
                    .padding(.all,20)
                
            }
    }
        
        .foregroundColor(.white)
        .padding(.leading,20)
        .padding(.trailing,20)
        
        
        
        
        
    }
}



