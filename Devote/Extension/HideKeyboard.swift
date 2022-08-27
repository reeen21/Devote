//
//  HideKeyboard.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/27.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
