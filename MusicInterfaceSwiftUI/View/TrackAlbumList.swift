//
//  TrackAlbumList.swift
//  MusicInterfaceSwiftUI
//
//  Created by Page Kallop on 2/8/21.
//

import SwiftUI

struct TrackAlbumList: View {
    var body: some View {
        VStack {
            HStack {
            Text("Artsit Name")
                .font(.custom("Courier", size: 20))
                .foregroundColor(Color.gray)
                Text("-")
                    .font(.custom("Courier", size: 20))
                    .foregroundColor(Color.gray)
                Text("Album Name")
                    .font(.custom("Courier", size: 20))
                    .foregroundColor(Color.gray)
            }
            HStack {
                NeumorphicButtonView(systemName: "heart.fill", size: CGSize(width: 20, height: 20)) {
                    
                }.foregroundColor(.gray)
                
            ZStack{
                Image("lilacs")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 8))
                    .padding()
            }
            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
            .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
                NeumorphicButtonView(systemName: "checkmark", size: CGSize(width: 20, height: 20)) {
                    
                }.foregroundColor(.gray)
        }
            TrackList()
      }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8166052699, green: 0.8448793292, blue: 0.9289778471, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct TrackAlbumList_Previews: PreviewProvider {
    static var previews: some View {
        TrackAlbumList()
    }
}
