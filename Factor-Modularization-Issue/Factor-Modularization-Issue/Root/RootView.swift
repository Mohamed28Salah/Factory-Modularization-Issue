//
//  RootView2.swift
//  PC-Revamp
//
//  Created by Mohamed Salah on 07/08/2024.
//

import SwiftUI
import Factory
import Navigation
import NavigationBackport
import Presentaion

public struct RootView: View {
    @InjectedObject(\.appState) var appState
    
    public init() {
    }
    
    public var body: some View {
        Group {
            switch appState.currentAppStateFlow {
            case .onboarding:
                OnbaordingView()
            case .guest:
                Text("guest")
            case .loggedIn:
                BottomTabsView()
            }
        }
    }
}


