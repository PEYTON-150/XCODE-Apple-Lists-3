//
//  appleListsNicApp.swift
//  appleListsNic
//
//  Created by Nicolas Reilly on 6/13/23.
//

import SwiftUI

@main
struct appleListsNicApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
