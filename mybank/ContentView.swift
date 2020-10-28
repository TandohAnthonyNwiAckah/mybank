//
//  ContentView.swift
//  mybank
//
//  Created by Tanacom on 10/27/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cardManager = CardManager()
    
    @State private var currentPage = 0
    
    @State private var selectedCard: Card = cards[0]
    
    @State private var startAnimation = false
    
    
    var body: some View {
      
        ZStack{
            Rectangle()
                .fill(ColorConstants.primary)
            
            VStack {
                
                TopBarView()
                
                PagerView(pageCount: cards.count, currentIndex: $currentPage){
                    
                    ForEach(cards){ card in
                        
                        CardView(card: card)
                            .onTapGesture {
                                
                                withAnimation{
                                    selectedCard = card
                            
                                    selectedCard.selected = true
                                    
                                }
                            }
                    }
                }
                
                .frame(height:240)
                .opacity(startAnimation ? 1 : 0)
                .animation(Animation.easeIn(duration: 0.5))
                
                
                Group {
                    
                    MenuHeaderView(title: "Transactions",imageName: "arrow.up.arrow.down")
                    
                    
                    TransactionListView(currentIndex: $currentPage, cardManager:cardManager)
                }
                .opacity(startAnimation ? 1 : 0)
                .animation(Animation.easeIn(duration: 0.5).delay(1.0))
                
               Spacer()
                
            }
            
            if selectedCard.selected {
                
                CardDetailView(card: $selectedCard, cardManager:cardManager)
                
            }
        }
        
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        .onAppear{
            
            withAnimation{
                
                startAnimation.toggle()
            }
        }
        
    }
}


struct  TopBarView : View {
    
    var body: some View
    {
        HStack {
            
            Button(action: {}){
                Image(systemName: "line.horizontal.3")
                    .padding(20)
            }
            
            Text("home".uppercased())
                .kerning(2.0)
                .bold()
            
            Spacer()
            
            Button(action : {}){
                
                Image(systemName: "magnifyingglass")
                    .padding(20)
            }
        }
        .foregroundColor(.white)
        .padding(.top,64)
        .padding([.bottom, .trailing,.leading],20)
        
    }
}
