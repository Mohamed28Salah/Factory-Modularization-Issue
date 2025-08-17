//
//  TabsView.swift
//  PC-Revamp
//
//  Created by Amal El Nafia on 19/05/2024.
//


import Factory
import SwiftUI
import Navigation
import NavigationBackport
import UIKit

public struct BottomTabsView : View {
    @InjectedObject(\.appState) var appState: AppState

    @State var updateState: Bool = false
    public var body: some View {
        TabView(selection: $appState.selectedTab) {
            homeTabView()
            merchantTabView()
        }
        .transition(.move(edge: .bottom).combined(with: .opacity))
    }
    
    @ViewBuilder
    func homeTabView() -> some View {
        NavRouterView(
            Router: appState.homeRouter,
            rootView: .home
        )
        .navigationViewStyle(.stack)
        .tag(Tab.home)
        .tabItem {
            Label{
                Text("home")
            } icon: {
                Image(systemName: "house.fill")
                    .renderingMode(.template)
            }
        }
    }
    
    @ViewBuilder
    func merchantTabView() -> some View {
        NavRouterView(
            Router: appState.merchantRouter,
            rootView: .merchant
        )
        .tag(Tab.merchant)
        .tabItem {
            Label{
                Text("stores")
            } icon: {
                Image(systemName: "cart.fill")
                    .renderingMode(.template)
            }
        }
    }
}
