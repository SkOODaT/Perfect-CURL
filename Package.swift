// swift-tools-version:4.1

import PackageDescription
let package = Package(
	name: "PerfectCURL",
	products: [.library(name: "PerfectCURL", targets: ["PerfectCURL"])],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-libcurl.git", from: "2.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", .upToNextMinor(from: "3.0.22")),
		.package(url: "https://github.com/PerfectlySoft/Perfect-Thread.git", .upToNextMinor(from: "3.0.6")),
	],
	targets: [
		.target(name: "PerfectCURL", dependencies: ["PerfectLib", "PerfectThread"]),
		.testTarget(name: "PerfectCURLTests", dependencies: ["PerfectCURL"])
	]
)
