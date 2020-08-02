// swift-tools-version:5.2

import PackageDescription
let package = Package(
	name: "PerfectCURL",
	platforms: [
		.macOS(.v10_15)
	],
	products: [.library(name: "PerfectCURL", targets: ["PerfectCURL"])],
	dependencies: [
        .package(url: "https://github.com/123FLO321/Perfect-libcurl.git", .branch("swift5")),
        .package(name: "PerfectLib", url: "https://github.com/123FLO321/Perfect.git", .branch("swift5")),
        .package(name: "PerfectThread", url: "https://github.com/123FLO321/Perfect-Thread.git", .branch("swift5")),
	],
	targets: [
		.target(name: "PerfectCURL", dependencies: ["PerfectLib", "PerfectThread"]),
		.testTarget(name: "PerfectCURLTests", dependencies: ["PerfectCURL"])
	]
)
