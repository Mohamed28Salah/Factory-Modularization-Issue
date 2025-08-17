//
//  ShopsVIew.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI
import Navigation

public struct ShopsView: View {
    @StateObject var viewModel: ShopsViewModel = .init()
    public init() {}
    
    public var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("🛍️ Welcome to Shops")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Browse and manage all available shops.")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
            
            // Navigation Button
            Button {
                viewModel.goToSmartScreen()
            } label: {
                Text("➡️ Go to Smart Screen")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Shops")
    }
}

#Preview {
    ShopsView()
}
