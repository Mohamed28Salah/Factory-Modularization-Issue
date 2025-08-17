//
//  File.swift
//  
//
//  Created by Mohamed Salah on 29/05/2024.
//

import Foundation
public extension String {
    func extractedStringBeforeParenthesis() -> String {
        if let index = self.firstIndex(of: "(") {
            return String(self.prefix(upTo: index))
        } else {
            return self
        }
    }
}
