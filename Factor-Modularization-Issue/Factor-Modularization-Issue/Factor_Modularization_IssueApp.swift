//
//  Factor_Modularization_IssueApp.swift
//  Factor-Modularization-Issue
//
//  Created by Mohamed Salah on 15/06/2025.
//

import SwiftUI
import Factory
import Domain
import Presentaion
import Data
import Navigation

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        Container.registerRepos()
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("App will terminate 🛑")
    }
}

@main
struct Factor_Modularization_IssueApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @InjectedObject(\.appState) var appState
    var body: some Scene {
        WindowGroup {
            RootView()
                .id(appState.rootViewID)
        }
    }
}
