//
//  MotherView.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .signUpPage:
            SignUpView()
        case .signInPage:
            SignInView()
        case .homePage:
            HomeView()
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
