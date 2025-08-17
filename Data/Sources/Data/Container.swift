import Foundation
import Factory
import Domain

public extension Container {
    static func registerRepos() {
        Container.shared.userRepository.register {
            UserRepositoryImpl()
        }
    }
}
