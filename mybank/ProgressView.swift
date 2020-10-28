//
//  ProgressView.swift
//  mybank
//
//  Created by Tanacom on 10/28/20.
//

import SwiftUI

struct ProgressView: View {
    
    var body: some View {
      
        ZStack {
            
            Circle()
                .stroke(lineWidth: 4.0)
                .fill(ColorConstants.border)
                .frame(width: 50, height: 50)
            
            Circle()
                .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 3/5)
                .stroke(style: StrokeStyle(lineWidth: 4.0,lineCap: .round))
                .fill(ColorConstants.graphLine)
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(-90))
            
            Text("3/5")
                .font(.system(size :14.0))
                .bold()
                .foregroundColor(.white)
            
            
            
            
            
        }
        
    }
    
}
