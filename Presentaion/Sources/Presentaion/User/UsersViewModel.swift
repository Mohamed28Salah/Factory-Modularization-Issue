import Factory
import Domain
import Foundation
import Navigation
public class UsersViewModel: ObservableObject {
    @Injected(\.getUsersUseCase) var getUsersUseCase
    @Injected(\.appState) var appState: AppState

    @Published var users: [User] = []
    @Published var isLoading = false
    @Published var error: Error?
//    public init() {}
    
     public func loadUsers() {
         isLoading = true
         error = nil
         users = getUsersUseCase.execute()
         isLoading = false
     }
    
    public func goToShops() {
        appState.activeRouter.push(.shops)
    }
}
