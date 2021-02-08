//
//  TrackList.swift
//  MusicInterfaceSwiftUI
//
//  Created by Page Kallop on 2/8/21.
//

import SwiftUI

struct TrackList: View {
    
  
    var body: some View {
        
        HStack{
            VStack {
                Text("Track Name")
                    .font(.custom("Courier", size: 20))
                    .foregroundColor(Color.gray)
                    .fontWeight(.bold)
                    .padding()
                Text("Artist Name")
                    .font(.custom("Courier", size: 15))
                    .foregroundColor(Color.gray)
    
            }
            Spacer()
            NeumorphicButtonView(systemName: "play.fill", size: CGSize(width: 20, height: 20)) {
                
            }.padding()
            .foregroundColor(.gray)
        }
    
    }
}



struct TrackList_Previews: PreviewProvider {
    static var previews: some View {
        TrackList()
    }
}
