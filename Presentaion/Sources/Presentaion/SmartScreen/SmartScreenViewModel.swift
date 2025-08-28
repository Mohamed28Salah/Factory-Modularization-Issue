//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 11/08/2025.
//

import Factory
import Navigation
import Foundation

public class SmartScreenViewModel: ObservableObject {
    @Injected(\.appState) var appState: AppState
    public init() {}
    deinit {
        
    }
    public func goToSmartScreen(shopName: String) {
         appState.activeRouter.push(.smartScreen(name: "Shops: \(shopName)"))
     }
    
    public func pop(count: Int) {
        appState.activeRouter.pop(count: count)
    }
    
    public func popToShops() {
        appState.activeRouter.pop(to: .shops)
    }
    
    public func popToRoot() {
        appState.activeRouter.popToRoot()
    }
}
