import Foundation
import Factory

public extension Container {
    var userRepository: Factory<UserRepository> {
        Factory(self) { fatalError("User Repo is not init") }
    }
    var getUsersUseCase: Factory<GetUsersUseCase> {
        Factory(self) { DefaultGetUsersUseCase() }
    }
}
