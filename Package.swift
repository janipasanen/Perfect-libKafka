// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "ckafka",
    products: [
      .library(name: "ckafka", targets: ["ckafka"]),
    ],
    targets: [
      .systemLibrary(
        name: "ckafka",
        pkgConfig: "rdkafka",
        providers: [
        .brew(["librdkafka"]),
        .apt(["librdkafka-dev"])
        ]
      )
    ]
  )
