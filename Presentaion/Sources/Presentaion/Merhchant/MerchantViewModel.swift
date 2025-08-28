//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 11/08/2025.
//

import Factory
import Foundation
import Navigation

public class MerchantViewModel: ObservableObject {
    @Injected(\.appState) var appState: AppState
    public init() {}
    deinit {
        
    }
    public func goToShops() {
        appState.activeRouter.push(.shops)
    }
    
    public func openBottomSheet() {
        appState.activeRouter.present(sheet: .bottomSheet)
    }
    
    public func openFullScreen() {
        appState.activeRouter.present(fullScreenCover: .fullScreenView)
    }
}
