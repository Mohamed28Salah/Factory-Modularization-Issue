import Foundation

public struct User: Identifiable, Sendable {
    public let id: String
    public let name: String
    public let email: String
    
    public init(id: String, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}

public protocol UserRepository: Sendable {
    func getUsers() async throws -> [User]
    func getUser(id: String) async throws -> User
} 