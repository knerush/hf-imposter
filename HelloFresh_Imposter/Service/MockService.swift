import Combine
import Foundation

protocol ItemService {
    func fetchItems() -> AnyPublisher<WeekStatus, Error>
}

/// Create a MockItemService that conforms to the ItemService
/// protocol
struct WeekStatusService: ItemService {
    func fetchItems() -> AnyPublisher<WeekStatus, Error> {
        // Simulate a network request delay
        let delay = 1.0
        
        // Simulate a successful response with week status item
        let item = WeekStatus(
            date: Date(),
            status: .skipped,
            description: "Update your order till Wednesday, Sep 27")
        
        return Deferred {
            Future { promise in
                DispatchQueue.global().asyncAfter(deadline: .now() + delay) {
                    promise(.success(item))
                }
            }
        }
        .eraseToAnyPublisher()
    }
}

