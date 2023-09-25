import Foundation

struct WeekStatus {
    let date: Date
    let status: OrderStatus
    let description: String
}

enum OrderStatus: String {
    case skipped = "Skipped"
    case upcoming = "Upcoming"
    case delivered = "Delivered"
    case past = "Past"
}
