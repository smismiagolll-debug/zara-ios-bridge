// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "ZaraBridgePulseApp",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(name: "ZaraBridgePulseApp", targets: ["ZaraBridgePulseApp"])
    ],
    targets: [
        .executableTarget(
            name: "ZaraBridgePulseApp",
            path: ".",
            sources: [
                "ChatBubbles.swift",
                "ChatScene.swift",
                "InputBar.swift",
                "UnityHook.swift",
                "VisualMirror.swift",
                "ZaraBridgePulse.swift",
                "main.swift"
            ]
        )
    ]
)
