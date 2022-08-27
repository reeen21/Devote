//
//  Constant.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/27.
//

import SwiftUI

//MARK: - Formatter
let itemFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateStyle = .short
  formatter.timeStyle = .medium
  return formatter
}()

