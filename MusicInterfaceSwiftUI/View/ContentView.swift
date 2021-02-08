//
//  ContentView.swift
//  MusicInterfaceSwiftUI
//
//  Created by Page Kallop on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        
       
        VStack {
            Spacer()
            
            HStack {
                NeumorphicButtonView(systemName: "arrow.left", size: CGSize(width: 30, height: 30)) {
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                Spacer()
                Text("Now Playing")
                    .font(.custom("Courier", size: 20))
                    .foregroundColor(Color.gray)
                Spacer()
                NeumorphicButtonView(systemName: "line.horizontal.3", size: CGSize(width: 30, height: 30)) {
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
            }.padding()
           
            
            ZStack {
                
            Image("lilacs")
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 8))
                .padding()
                
//                .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
//                .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
            }
            .clipShape(Circle().inset(by: 1))
            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
            .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
            
            Spacer()
            Text("Song Name")
                .font(.custom("Courier", size: 30))
                .foregroundColor(Color.gray)
                .fontWeight(.bold)
            Text("Artist")
                .font(.custom("Courier", size: 15))
                .foregroundColor(Color.gray)
            
            Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
                .padding()
            
            HStack {
                
                NeumorphicButtonView(systemName: "backward.fill", size: CGSize(width: 25, height: 25)) {
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                Spacer()
                
                NeumorphicButtonView(systemName: "stop.fill", size: CGSize(width: 25, height: 25)) {
                    
                }.foregroundColor(.gray)
                Spacer()
                
                
                NeumorphicButtonView(systemName: "forward.fill", size: CGSize(width: 25, height: 25)) {
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
            }.padding(50)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
