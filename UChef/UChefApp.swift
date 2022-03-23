//
//  UChefApp.swift
//  UChef
//
//  Created by Daniel Li on 3/12/22.
//

import SwiftUI
import Firebase

@main
struct UChefApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
