//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 11/08/2025.
//

import Foundation
import Factory
import Navigation

public class ShopsViewModel: ObservableObject {
    @Injected(\.appState) var appState: AppState
//    public init() {}
    
     public func goToSmartScreen() {
         appState.activeRouter.push(.smartScreen(name: "I came from Merchant Tab/Shops View"))
     }
}
