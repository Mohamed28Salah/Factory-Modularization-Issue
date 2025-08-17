//
//  MerchantView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

//
//  MerchantView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI
import Navigation

public struct MerchantView: View {
    @StateObject var viewModel: MerchantViewModel = .init()
    public init() {}
    
    public var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("🏪 Welcome to Merchant Hub")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("Manage your store and navigate with ease.")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
            
            // Navigation Buttons
            VStack(spacing: 15) {
                Button {
                    viewModel.goToShops()
                } label: {
                    Text("🛒 Go to Shops")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                Button {
                    viewModel.openBottomSheet()
                } label: {
                    Text("📑 Show Bottom Sheet")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }

                Button {
                    viewModel.openFullScreen()
                } label: {
                    Text("📲 Open Full Screen View")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Merchant")
    }
}

#Preview {
    MerchantView()
}
