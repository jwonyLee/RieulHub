import ProjectDescription

let project = Project(
    name: "RieulHub",
    targets: [
        .target(
            name: "RieulHub",
            destinations: .iOS,
            product: .app,
            bundleId: "tech.rieul.RieulHub",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["App/Sources/**"],
            resources: ["App/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "RieulHubTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "tech.rieul.RieulHubTests",
            infoPlist: .default,
            sources: ["App/Tests/**"],
            resources: [],
            dependencies: [.target(name: "RieulHub")]
        ),
    ]
)
