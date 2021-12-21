//
//  AuthenticationFirebaseSwiftUIApp.swift
//  AuthenticationFirebaseSwiftUI
//
//  Created by Work on 21.12.21.
//

import SwiftUI
import Firebase

@main
struct AuthenticationFirebaseSwiftUIApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter)
        }
    }
}
