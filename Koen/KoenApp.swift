//
//  KoenApp.swift
//  Koen
//
//  Created by Guen on 15/06/2023.
//

import SwiftUI

@main
struct KoenApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
