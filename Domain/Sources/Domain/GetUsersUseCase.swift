import Foundation

public protocol GetUsersUseCase: Sendable {
    func execute() async throws -> [User]
}

public final class DefaultGetUsersUseCase: GetUsersUseCase {
    private let repository: UserRepository
    
    public init(repository: UserRepository) {
        self.repository = repository
    }
    
    public func execute() async throws -> [User] {
        return try await repository.getUsers()
    }
} 