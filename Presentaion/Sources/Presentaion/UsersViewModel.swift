import Foundation
import Domain

@MainActor
public final class UsersViewModel: ObservableObject {
    private let getUsersUseCase: GetUsersUseCase
    
    @Published public private(set) var users: [User] = []
    @Published public private(set) var isLoading = false
    @Published public private(set) var error: Error?
    
    public init(getUsersUseCase: GetUsersUseCase) {
        self.getUsersUseCase = getUsersUseCase
    }
    
    public func loadUsers() async {
        isLoading = true
        error = nil
        
        do {
            users = try await getUsersUseCase.execute()
        } catch {
            self.error = error
        }
        
        isLoading = false
    }
} 