//
//  File.swift
//  Navigation
//
//  Created by Mohamed Salah on 17/08/2025.
//

import SwiftUI
import UIKit

extension UITabBar {
    
    @MainActor
    static func setVisibility(_ visible: Bool, animated: Bool = true) {
        guard let tabBarController = findTabBarController() else { return }
        let tabBar = tabBarController.tabBar
        
        if animated {
            UIView.animate(withDuration: 0.3) {
                tabBar.isHidden = !visible
            }
        } else {
            tabBar.isHidden = !visible
        }
    }
    
    @MainActor
    private static func findTabBarController() -> UITabBarController? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else {
            return nil
        }
        return findTabBarController(in: window.rootViewController)
    }
    
    @MainActor
    private static func findTabBarController(in viewController: UIViewController?) -> UITabBarController? {
        guard let viewController = viewController else { return nil }
        
        if let tabBarController = viewController as? UITabBarController {
            return tabBarController
        }
        
        // search children
        for child in viewController.children {
            if let tabBarController = findTabBarController(in: child) {
                return tabBarController
            }
        }
        
        // search presented
        if let presented = viewController.presentedViewController {
            if let tabBarController = findTabBarController(in: presented) {
                return tabBarController
            }
        }
        
        return nil
    }
}
