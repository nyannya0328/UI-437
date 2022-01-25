//
//  ContentView.swift
//  UI-437
//
//  Created by nyannyan0328 on 2022/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab : Int = 1
    var body: some View {
        
        
        
        TabView(selection: $currentTab) {
            
            
            ForEach(1...6,id:\.self){index in
                
                
               
                    
                    
                    
                    GeometryReader{proxy in
                        
                        
                        
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(x: -proxy.frame(in: .global).minX)
                            .frame(width: getRect().width, height: getRect().height / 2)
                        
                          
                        
                    }
                    .frame(height: getRect().height / 2)
                    .cornerRadius(10)
                    .padding(15)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: -5, y: -5)
                    .padding(.horizontal,25)
                    .cornerRadius(10)
                    .overlay(
                    
                    
                    Image("p\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .offset(x: -20, y: 23)
                        
                    
                    ,alignment: .bottomTrailing
                    
                    )
                    
                }
              
                
                
            }
           .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
            
            
        
            
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
}
