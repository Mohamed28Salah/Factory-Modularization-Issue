//
//  FullScreenCover.swift
//
//
//  Created by Amal El Nafia on 23/05/2024.
//

import Foundation
import SwiftUI


public enum FullScreenCover {
    case fullScreenView
}

extension FullScreenCover: Identifiable {
    public var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension FullScreenCover: Equatable {
    public static func == (lhs: FullScreenCover, rhs: FullScreenCover) -> Bool {
        return lhs.id == rhs.id
    }
}
