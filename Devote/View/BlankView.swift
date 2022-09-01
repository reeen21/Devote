//
//  BlanckView.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/31.
//

import SwiftUI

struct BlankView: View {
    var backGroundColor: Color
    var backGroundOpacity: Double
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backGroundColor)
        .opacity(backGroundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BlanckView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(backGroundColor: Color.black, backGroundOpacity: 0.3)
            .background(BackGroundImageView())
            .background(backgroundGradient.ignoresSafeArea(.all))
    }
}
