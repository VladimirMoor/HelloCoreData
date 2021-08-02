//
//  HelloCoreDataApp.swift
//  HelloCoreData
//
//  Created by Vladimir on 02.08.2021.
//

import SwiftUI

@main
struct HelloCoreDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coreDM: CoreDataManager())
        }
    }
}
