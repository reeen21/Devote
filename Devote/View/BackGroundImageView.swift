//
//  BackGroundImageView.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/27.
//

import SwiftUI

struct BackGroundImageView: View {
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

struct BackGroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundImageView()
    }
}
