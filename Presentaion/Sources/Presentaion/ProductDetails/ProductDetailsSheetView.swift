//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 17/08/2025.
//

import Foundation
import SwiftUI
import Navigation

public struct ProductDetailsSheetView: View {
    @State private var showSheet = false

    public init() {}
    
    public var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Button {
                showSheet = true
            } label: {
                Text("➡️ Go to another bottom sheet")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Product Details")
        .sheet(isPresented: $showSheet, content: {
            ProductDetailsSheetView()
        })
    }
}

#Preview {
    ShopsView()
}
