//
//  Screen.swift
//  PC-Revamp
//
//  Created by Amal El Nafia on 15/05/2024.
//
import Foundation

public enum Screen {
    case home
    case merchant
    case smartScreen(name: String)
    case shops
    case onboarding
    case users
}

extension Screen: Identifiable {
    public var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension Screen: Equatable {
    public static func == (lhs: Screen, rhs: Screen) -> Bool {
        return lhs.id == rhs.id
    }
}

extension Screen: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

