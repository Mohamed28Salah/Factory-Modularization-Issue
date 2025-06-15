import Foundation
import Factory

public extension Container {
    var userRepository: Factory<UserRepository> {
        self { UserRepositoryImpl() }
    }
    
    var getUsersUseCase: Factory<GetUsersUseCase> {
        self { DefaultGetUsersUseCase(repository: self.userRepository()) }
    }
} 