//
//  NavRouterView.swift
//  KodeiOS
//
//  Created by Mohamed Salah on 10/03/2024.
//  Copyright © 2024 34ML. All rights reserved.
//

import SwiftUI
import NavigationBackport
import Navigation
public struct NavRouterView: View {
    @StateObject var router: NavRouter
    var rootView: Screen
    
    public init(Router: NavRouter, rootView: Screen) {
        self._router = StateObject(wrappedValue: Router)
        self.rootView = rootView
    }
    
    public var body: some View {
        NBNavigationStack(path: $router.path) {
            router.build(screen: rootView)
                .nbNavigationDestination(for: Screen.self) { screen in
                    router.build(screen: screen)
                }
                .sheet(item: $router.sheet) { sheet in
                    router.build(sheet: sheet)
                }
                .fullScreenCover(item: $router.fullScreenCover) { fullScreenCover in
                    router.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(router)
    }
}

