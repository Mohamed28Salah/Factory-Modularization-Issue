//
//  HomeView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import SwiftUI
import Navigation

public struct HomeView: View {
    @StateObject var viewModel: HomeViewModel = .init()

    public init() {}
    
    public var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("🏠 Home Dashboard")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Manage and explore the app from here.")
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
            
            Button {
                viewModel.goToUser()
            } label: {
                Text("➡️ Go to Usrs")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            
            Button {
                viewModel.logOut()
            } label: {
                Text("Log Out !!!")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Home")
    }
}

#Preview {
    HomeView()
}
