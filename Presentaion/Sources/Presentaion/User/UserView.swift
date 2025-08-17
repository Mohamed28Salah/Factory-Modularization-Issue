//
//  File.swift
//  Presentaion
//
//  Created by Mohamed Salah on 10/08/2025.
//

import SwiftUI
import Navigation
public struct UserView: View {
    @StateObject var viewModel: UsersViewModel = .init()
    public init() {}
    public var body: some View {
        VStack {
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

            ForEach(viewModel.users) { user in
                Text("User Name: \(user.name)")
            }
        }
        .padding()
        .onAppear {
            viewModel.loadUsers()
        }
    }
}

//#Preview {
//    UserView()
//}
