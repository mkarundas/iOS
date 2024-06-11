//
//  VStackExampleApp.swift
//  VStackExample
//
//  Created by Arundas MK on 11/06/24.
//

import SwiftUI

@main
struct VStackExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
