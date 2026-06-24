// swift-tools-version: 6.2
import PackageDescription

let package = Package(
  name: "Realm",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "Realm", targets: ["Realm"]),
    .library(name: "RealmSwift", targets: ["RealmSwift"]),
  ],
  targets: [
    .binaryTarget(
      name: "Realm",
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/realm-swift-20.0.5.zip",
      checksum: "2c6c760730b3cca3eee93bbe138df696f85ed46550222f310976be226bc693e8"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/RealmSwift@26.5.spm.zip",
      checksum: "cfc9f0e708287cf8805bd01eddcdbd4cfe0a6cba9413ea391a99a77b4e913d93"
    ),
  ]
)
