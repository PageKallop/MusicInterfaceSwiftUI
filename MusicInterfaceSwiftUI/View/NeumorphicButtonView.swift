//
//  NeumorphicButtonView.swift
//  MusicInterfaceSwiftUI
//
//  Created by Page Kallop on 2/8/21.
//

import SwiftUI

struct NeumorphicButtonView: View {
    
    private var systemName: String
    private var onTap: () -> Void
    
    init(systemName: String, onTap: @escaping () -> Void) {
        self.systemName = systemName
        self.onTap = onTap
    }
    var body: some View {
       
        Button(action: {}){
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .padding(30)
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
        }.clipShape(Circle())
        .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 8, x: 8, y: 8)
        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -8, y: -8)
    }
}

struct NeumorphicButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicButtonView(systemName: "heart.fill") {}
    }
}
