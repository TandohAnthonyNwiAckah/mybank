//
//  CardView.swift
//  mybank
//
//  Created by Tanacom on 10/27/20.
//

import SwiftUI

struct CardView: View {
    
    let card: Card
    
    var body: some View {
     
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .fill(ColorConstants.cardBackground)
            
            VStack {
                HStack {
                    VStack(alignment: .leading){
                        
                        Text(card.company.uppercased()).font(.system(size: 14)).bold().kerning(2.0)
                        
                        Text(card.type.rawValue.uppercased()).font(.system(size: 14)).bold().kerning(2.0)
            
                    }
                    
                    Spacer()
                    
                    Text(card.company.uppercased()).font(.system(size: 24,weight:Font.Weight.heavy)).italic()
                    
                }
                
                
                Spacer()
                
                HStack {
                    ForEach(0..<3){ i in Text("****").kerning(3.0)
                        Spacer()
                    }
                    Text(card.getLastFourDigits()).kerning(3.0)
                    }
            }
            
            .padding(.all,40)
            
        }
        .foregroundColor(.white)
        .padding(.leading,20)
        .padding(.trailing,20)
        
    }
}




struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cards[0])
    }
}





