import Foundation
import Factory
import Domain

public extension Container {
    var userRepositoryImpl: Factory<UserRepository> {
        self { UserRepositoryImpl() }
    }
} 