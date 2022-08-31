//
//  BlanckView.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/31.
//

import SwiftUI

struct BlankView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BlanckView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
