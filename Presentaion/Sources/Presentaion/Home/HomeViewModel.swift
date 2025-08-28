//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 11/08/2025.
//

import Factory
import Foundation
import Navigation

public class HomeViewModel: ObservableObject {
    @Injected(\.appState) var appState: AppState
//    public init() {}
    deinit {
        
    }
    public func logOut() {
        appState.currentAppStateFlow = .onboarding
    }
    
    public func goToSmartScreen() {
        appState.activeRouter.push(.smartScreen(name: "Navigated from Home View"))
    }
    
    public func goToUser() {
        appState.activeRouter.push(.users)
    }
}
