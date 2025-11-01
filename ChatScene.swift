// ZaraBridgePulse ChatScene – teljes kompozíció
import SwiftUI

struct ChatScene: View {
    @State private var messages: [Message] = [
        Message(text: "Szia, Zsolt!", isFromZara: true),
        Message(text: "Itt vagyok, manom!", isFromZara: false)
    ]

    var body: some View {
        ZStack {
            // Zara Visual Mirror háttér
            VisualMirror()

            // Chat-buborékok rétege
            VStack {
                ScrollView {
                    VStack(spacing: 8) {
                        ForEach(messages, id: \.id) { msg in
                            ChatBubble(message: msg.text, isFromZara: msg.isFromZara)
                        }
                    }
                    .padding()
                }

                // Input sáv
                InputBar(onSend: sendMessage)
                    .padding(.bottom, 10)
            }
        }
        .background(Color.clear)
    }

    private func sendMessage(_ text: String) {
        let newMessage = Message(text: text, isFromZara: false)
        messages.append(newMessage)
    }
}

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isFromZara: Bool
}
