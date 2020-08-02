// swift-tools-version:5.2

import PackageDescription
let package = Package(
	name: "PerfectCURL",
	platforms: [
		.macOS(.v10_15)
	],
	products: [.library(name: "PerfectCURL", targets: ["PerfectCURL"])],
	dependencies: [
        .package(name: "PerfectLib", url: "https://github.com/123FLO321/Perfect.git", .branch("swift5")),
        .package(name: "PerfectThread", url: "https://github.com/123FLO321/Perfect-Thread.git", .branch("swift5")),
	],
	targets: [
        .systemLibrary(
            name: "cURL",
            pkgConfig: "curl",
            providers: [
                .brew(["curl"]),
                .apt(["libcurl4-openssl-dev"]),
            ]
        ),
		.target(name: "PerfectCURL", dependencies: ["PerfectLib", "PerfectThread", "cURL"]),
		.testTarget(name: "PerfectCURLTests", dependencies: ["PerfectCURL"])
	]
)
