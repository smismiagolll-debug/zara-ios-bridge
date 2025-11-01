// ZaraBridgePulse – lebegõ beviteli mezõ
import SwiftUI

struct InputBar: View {
    @State private var message: String = ""
    var onSend: (String) -> Void

    var body: some View {
        HStack {
            TextField("Írj Zarának…", text: $message)
                .padding(12)
                .background(Color.white.opacity(0.05))
                .cornerRadius(15)
                .foregroundColor(.white)
                .placeholder(when: message.isEmpty) {
                    Text("Írj Zarának…").foregroundColor(.white.opacity(0.3))
                }

            Button(action: {
                guard !message.trimmingCharacters(in: .whitespaces).isEmpty else { return }
                onSend(message)
                message = ""
            }) {
                Image(systemName: "arrow.up.circle.fill")
                    .foregroundColor(.cyan)
                    .font(.system(size: 24))
            }
        }
        .padding()
        .background(Color.clear)
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
