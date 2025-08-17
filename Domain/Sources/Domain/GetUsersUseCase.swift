import Factory

public protocol GetUsersUseCase {
    func execute() -> [User]
}

public class DefaultGetUsersUseCase: GetUsersUseCase {
    @Injected(\.userRepository) var repository
    
    public func execute() -> [User] {
        return repository.getUsers()
    }
} 
