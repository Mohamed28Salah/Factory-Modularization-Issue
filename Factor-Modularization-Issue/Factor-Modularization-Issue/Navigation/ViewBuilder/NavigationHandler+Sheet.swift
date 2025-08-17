//
//  NavigationHandler+Sheet.swift
//  PC-Revamp
//
//  Created by Amal El Nafia on 23/05/2024.
//

import Foundation
import SwiftUI
import Navigation
import Presentaion
//MARK: - Sheet builder -

extension NavRouter {
    
    @ViewBuilder
    public func build(sheet: Sheet) -> some View {
        switch sheet {
        case .bottomSheet:
            ProductDetailsSheetView()
        }
    }
}

