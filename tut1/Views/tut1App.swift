//
//  tut1App.swift
//  tut1
//
//  Created by Sonal on 08/06/24.
//

import SwiftUI

@main
struct tut1App: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
