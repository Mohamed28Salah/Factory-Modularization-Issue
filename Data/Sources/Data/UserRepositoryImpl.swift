import Foundation
import Domain

public final class UserRepositoryImpl: UserRepository {
    public init() {}
    
    public func getUsers() -> [User] {
        // Mock data
        return [
            User(id: "1", name: "John Doe", email: "john@example.com"),
            User(id: "2", name: "Jane Smith", email: "jane@example.com"),
            User(id: "3", name: "Bob Johnson", email: "bob@example.com")
        ]
    }
    
    public func getUser(id: String) -> User {
        // Mock data
        return User(id: id, name: "Mock User", email: "mock@example.com")
    }
} 
