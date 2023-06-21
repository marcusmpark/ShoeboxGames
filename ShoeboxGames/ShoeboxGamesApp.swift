//
//  ShoeboxGamesApp.swift
//  ShoeboxGames
//
//  Created by Marcus Park on 6/21/23.
//

import SwiftUI

@main
struct ShoeboxGamesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
