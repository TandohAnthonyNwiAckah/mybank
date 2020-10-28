//
//  PagerView.swift
//  mybank
//
//  Created by Tanacom on 10/28/20.
//

import SwiftUI

struct PagerView<Content:View>: View {
    
    
    let pageCount: Int
    
    @Binding var currentIndex: Int
    
    let content:Content
    
    @GestureState private var translation : CGFloat = 0.0
    
    
    init(pageCount:Int,currentIndex: Binding<Int>, @ViewBuilder content: () -> Content) {
        
        self.pageCount = pageCount
        
        self._currentIndex = currentIndex
        
        self.content = content()
        
    }
    
    
    
    var body: some View {
        
        GeometryReader {geo in
            VStack (spacing :24){
                HStack(spacing:0){
                    self.content.frame(width:geo.size.width)
                }
                .frame(width: geo.size.width, alignment: .leading)
                .offset(x: -CGFloat(self.currentIndex) * geo.size.width)
                .offset(x: self.translation)
                animation(.interactiveSpring())
                    .gesture(DragGesture().updating(self.$translation, body: { (value,state , _) in
                        
                        state = value.translation.width
                        
                    }).onEnded({ (value) in
                        
                        let offset = value.translation.width / geo.size.width
                        
                        let newIndex = (CGFloat(self.currentIndex) - offset).rounded()
                        
                        self.currentIndex = min(max(Int(newIndex),0),self.pageCount - 1)
                        
                    }))
                
        
                
                HStack {
                    
                    ForEach(0..<self.pageCount,id:\.self) {
                        index in
                        Circle()
                            .fill(index == self.currentIndex ? Color.white : Color.gray)
                            .frame(width:10,height :10)
                            
                            .scaleEffect(index == self.currentIndex ? 0.8 : 0.4)
                        
                        
                        
                    }
                    
                }
                
                
                
                
            }
            
        }
        
    }
    
    
    
    
}





