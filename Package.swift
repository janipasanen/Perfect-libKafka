import PackageDescription

let package = Package(
    name: "ckafka",
    pkgConfig: "rdkafka",
    providers: [
      .Brew("librdkafka"),
      .Apt("librdkafka-dev")
    ]
  )
