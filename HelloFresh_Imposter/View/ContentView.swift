import SwiftUI
import WidgetKit

struct ContentView: View {
    @AppStorage("myWeekStatus") var weekStatus = "Upcoming"
    
    let defaults = UserDefaults(suiteName: "group.kn.com.HelloFresh_Imposter")

    var body: some View {
        Image("home")
            .imageScale(.large)
            .foregroundStyle(.tint)
    }
}

#Preview {
    ContentView()
}
