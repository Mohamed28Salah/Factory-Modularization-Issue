//
//  FullScreenSheet.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI
import Navigation

public struct FullScreenSheet: View {
    @EnvironmentObject var navRouter: NavRouter
    public init() {}
    
    public var body: some View {
        Button {
            navRouter.dismissFullScreenCover()
        } label: {
            Text("Dismiss Full Screen Cover")
        }
    }
}

#Preview {
    FullScreenSheet()
}
