//
//  Router.swift
//  KodeiOS
//
//  Created by Mohamed Salah on 10/03/2024.
//  Copyright © 2024 34ML. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import NavigationBackport

public class NavRouter: ObservableObject {
    
    @Published public var path = NBNavigationPath()
    @Published public var sheet: Sheet?
    @Published public var fullScreenCover: FullScreenCover?
    
    public init() {}
    
    public func push(_ screen: Screen) {
        path.append(screen)
    }
    
    public func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    public func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    public func pop() {
        path.pop()
    }
    
    public func popToRoot() {
        path.popToRoot()
    }
    
    public func pop(count: Int) {
        guard count > 0 else { return }
        path.pop(count)
    }
    
    public func pop(to view: Screen) {
        path.popTo(view)
    }

    public func dismissSheet() {
        self.sheet = nil
    }
    
    public func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
}
//
//extension NavRouter {
//    @MainActor private func updateTabBarVisibility() {
//        let shouldShow = path.count == 0 // Show only when stack is empty
//        
//        DispatchQueue.main.async {
//            if let tabBarController = findTabBarController() {
//                UIView.animate(withDuration: 0.3) {
//                    tabBarController.tabBar.isHidden = !shouldShow
//                }
//            }
//        }
//    }
//    
//    @MainActor private func findTabBarController() -> UITabBarController? {
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//              let window = windowScene.windows.first else {
//            return nil
//        }
//        
//        return findTabBarController(in: window.rootViewController)
//    }
//    
//    @MainActor private func findTabBarController(in viewController: UIViewController?) -> UITabBarController? {
//        guard let viewController = viewController else { return nil }
//        
//        if let tabBarController = viewController as? UITabBarController {
//            return tabBarController
//        }
//        
//        // Check children
//        for child in viewController.children {
//            if let tabBarController = findTabBarController(in: child) {
//                return tabBarController
//            }
//        }
//        
//        // Check presented view controller
//        if let presented = viewController.presentedViewController {
//            if let tabBarController = findTabBarController(in: presented) {
//                return tabBarController
//            }
//        }
//        
//        return nil
//    }
//}

