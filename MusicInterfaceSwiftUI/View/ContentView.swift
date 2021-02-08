//
//  ContentView.swift
//  MusicInterfaceSwiftUI
//
//  Created by Page Kallop on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       
        VStack {
            
            HStack {
                NeumorphicButtonView(systemName: "arrow.left", size: CGSize(width: 30, height: 30)) {
                    
                }
                Spacer()
                Text("Now Playing")
                Spacer()
                NeumorphicButtonView(systemName: "line.horizontal.3", size: CGSize(width: 30, height: 30)) {
                    
                }
            }.padding()
           
            
            ZStack {
            Image("lilacs")
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .padding()
                .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
            }.clipShape(Circle().inset(by: 6))
            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
            .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
            
            Spacer()
            
            HStack {
                
                NeumorphicButtonView(systemName: "backward.fill", size: CGSize(width: 25, height: 25)) {
                    
                }
                Spacer()
                
                NeumorphicButtonView(systemName: "stop.fill", size: CGSize(width: 25, height: 25)) {
                    
                }
                Spacer()
                
                NeumorphicButtonView(systemName: "forward.fill", size: CGSize(width: 25, height: 25)) {
                    
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
