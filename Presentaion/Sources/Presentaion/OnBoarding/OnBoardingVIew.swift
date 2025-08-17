//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 11/08/2025.
//

import Foundation
import SwiftUI
import Navigation

public struct OnbaordingView: View {

    @StateObject var viewModel: OnbaordingViewModel = .init()
    
    public init() {}
    public var body: some View {
        VStack {
            Button {
                viewModel.signIn()
            } label: {
                Text("➡️ Sign In")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

        }
    }
}
