//
//  learningApp.swift
//  learning
//
//  Created by IDG Mac Mini M4 2 on 18/10/25.
//

import SwiftUI
let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]
@main
struct learningApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                Settings()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .center))
        }
    }
}
