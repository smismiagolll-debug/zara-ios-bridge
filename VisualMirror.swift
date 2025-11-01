//
//  VisualMirror.swift
//  Zara iOS Bridge
//
//  Zara Visual Mirror — háttér és pulzus-effekt (lokális próba)
//

import SwiftUI
import Combine

struct VisualMirror: View {
    @State private var pulseOpacity: Double = 0.3
    @State private var hueShift: Double = 0.0
    let timer = Timer.publish(every: 1.5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            // Háttérkép – Unity tükör szimuláció
            Image("unity_bg")
                .resizable()
                .scaledToFill()
                .blur(radius: 8)
                .opacity(0.6)
            
            // Pulzus-fény
            Circle()
                .fill(LinearGradient(
                    colors: [.yellow.opacity(0.4), .white.opacity(0.2)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .frame(width: 320, height: 320)
                .opacity(pulseOpacity)
                .hueRotation(Angle(degrees: hueShift))
                .blendMode(.screen)
                .animation(.easeInOut(duration: 1.5), value: pulseOpacity)
                .onReceive(timer) { _ in
                    withAnimation {
                        pulseOpacity = Double.random(in: 0.2...0.6)
                        hueShift = Double.random(in: -15...15)
                    }
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    VisualMirror()
}
