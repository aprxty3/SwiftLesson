//
//  SwiftLessonApp.swift
//  SwiftLesson
//
//  Created by Dwi Aji Prasetyo on 14/10/24.
//

import SwiftUI

@main
struct SwiftLessonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
