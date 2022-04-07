// swift-tools-version:5.3
///
///  Package.swift
///
///  Created by Tony Stone on 04/07/2022.
///
import PackageDescription

let package = Package(
    name: "TPCircularBuffer",
    platforms: [.iOS(.v8), .macOS(.v10_10), .tvOS(.v9)],
    products: [
      .library(
        name: "TPCircularBuffer",
        targets: ["TPCircularBuffer"]
      )],
    targets: [
        /// Module targets
        .target(
            name: "TPCircularBuffer",
            dependencies: [],
            path: "./",
            exclude: ["TPCircularBuffer.podspec", ".swiftpm", ".git"],
            publicHeadersPath: "include/",
            cSettings: [
                .headerSearchPath("include/TPCircularBuffer")
            ],
            linkerSettings: [
                .linkedFramework("AudioToolbox")
            ])
])
