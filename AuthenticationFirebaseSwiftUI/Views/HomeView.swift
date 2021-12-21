//
//  HomeView.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var signOutProcessing = false
    
    var body: some View {
        NavigationView {
            Text("HomeView")
                .navigationTitle("V24")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        if signOutProcessing {
                            ProgressView()
                        } else {
                            Button("Sign Out") {
                                signOutUser()
                            }
                        }
                    }
                }
        }
    }
    
    func signOutUser() {
        signOutProcessing = true
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
            signOutProcessing = false
        }
        withAnimation {
            viewRouter.currentPage = .signInPage
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
