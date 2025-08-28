//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 11/08/2025.
//

import Factory
import Domain
import Foundation
import Navigation

public class OnbaordingViewModel: ObservableObject {
    @Injected(\.appState) var appState: AppState

    public init() {}
    deinit {
        
    }
    public func signIn() {
        appState.currentAppStateFlow = .loggedIn
    }
}
