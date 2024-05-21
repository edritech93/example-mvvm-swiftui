import Foundation
import Combine
import CoreLocation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []

    init() {
        fetchUsers()
    }

    func fetchUsers() {
        // Simulate fetching data from a network or database
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.users = [
                User(name: "John Doe", age: 30),
                User(name: "Jane Smith", age: 25),
                User(name: "Sam Wilson", age: 40)
            ]
        }
    }
}
