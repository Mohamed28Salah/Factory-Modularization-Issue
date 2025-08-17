//
//  NavigationHandler+FullScreen.swift
//  PC-Revamp
//
//  Created by Amal El Nafia on 23/05/2024.
//

import Presentaion
import SwiftUI
import Navigation
//MARK: - FullScreen builder

extension NavRouter {
    @ViewBuilder
    public func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .fullScreenView:
            FullScreenSheet()
        }
    }
}
