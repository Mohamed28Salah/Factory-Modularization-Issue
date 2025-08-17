//
//  Sheet.swift
//  
//
//  Created by Amal El Nafia on 23/05/2024.
//

import Foundation

public enum Sheet {
    case bottomSheet
}

extension Sheet: Identifiable {
    public var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension Sheet: Equatable {
    public static func == (lhs: Sheet, rhs: Sheet) -> Bool {
        return lhs.id == rhs.id
    }
}

