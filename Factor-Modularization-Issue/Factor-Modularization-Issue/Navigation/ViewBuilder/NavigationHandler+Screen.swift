//
//  NavigationHandler+Screen.swift
//  PC-Revamp
//
//  Created by Amal El Nafia on 23/05/2024.
//

import Foundation
import SwiftUI
import Navigation
import Presentaion
//MARK: - Screen builder

extension NavRouter {
    @ViewBuilder
    public func build(screen: Screen) -> some View {
        switch screen {
        case .home:
            HomeView()
        case .merchant:
            MerchantView()
        case .smartScreen(let name):
            SmartScreenView(shopName: name)
        case .shops:
            ShopsView()
        case .onboarding:
            OnbaordingView()
        case .users:
            UserView()
        }
    }
}
