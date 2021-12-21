//
//  ViewRouter.swift
//  AuthenticationStarter
//
//  Created by Work on 13.12.21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .signInPage
    
}

enum Page {
    case signUpPage
    case signInPage
    case homePage
}

