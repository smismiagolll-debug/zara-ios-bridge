// ZaraBridgePulse Chat – áttetszõ buborék verzió
import SwiftUI

struct ChatBubble: View {
    var message: String
    var isFromZara: Bool

    var body: some View {
        HStack {
            if isFromZara {
                bubble
                Spacer()
            } else {
                Spacer()
                bubble
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 2)
    }

    private var bubble: some View {
        Text(message)
            .font(.system(size: 16, weight: .light))
            .padding(12)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 22)
                    .stroke(isFromZara ? Color.cyan.opacity(0.35) : Color.yellow.opacity(0.35), lineWidth: 1)
            )
            .foregroundColor(Color.white.opacity(0.85))
            .opacity(0.9)
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 8) {
            ChatBubble(message: "Szia, Zsolt ??", isFromZara: true)
            ChatBubble(message: "Itt vagyok, manóm ??", isFromZara: false)
        }
        .background(Color.black)
    }
}
