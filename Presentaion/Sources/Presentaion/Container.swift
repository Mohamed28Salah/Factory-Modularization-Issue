import Foundation
import Factory
import Domain

public extension Container {
    var usersViewModel: Factory<UsersViewModel> {
        self { UsersViewModel(getUsersUseCase: self.getUsersUseCase()) }
    }
} 