import AppIntents

struct UpdateStatusIntent: AppIntent {
    static var title: LocalizedStringResource = "UpdateStatusIntent"
    
    @Parameter(title: "My Week Status")
    var statusName: String
    
    init(statusName: String) {
        self.statusName = statusName
    }
    
    init() {
        self.statusName = "Upcoming"
    }
    
    func perform() async throws -> some IntentResult {
        if let store = UserDefaults(suiteName: "group.kn.com.HelloFresh_Imposter") {
            store.setValue(statusName, forKey: "myWeekStatus")
            return .result()
        }
        return .result()
    }
}
