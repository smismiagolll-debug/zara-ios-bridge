// Unity háttér-hook – ZaraBridgePulse iOS
import SwiftUI
import Foundation

struct UnityBackgroundView: View {
    var body: some View {
        ZStack {
            Color.clear
                .background(
                    Image("UnityStream")
                        .resizable()
                        .scaledToFill()
                        .opacity(0.95)
                )
                .ignoresSafeArea()
        }
    }
}
