// ZaraBridgePulse App – indító
import SwiftUI

@main
struct ZaraBridgePulseApp: App {
    var body: some Scene {
        WindowGroup {
            ChatScene()
                .preferredColorScheme(.dark)
        }
    }
}
