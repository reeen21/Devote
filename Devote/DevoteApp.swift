//
//  DevoteApp.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/26.
//

import SwiftUI

@main
struct DevoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
