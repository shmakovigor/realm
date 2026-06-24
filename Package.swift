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
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/Realm.spm.zip",
      checksum: "3598552815548c4ef583e53ee84ffc3c8d2233fd0eedad1303f59f6ef5b798cc"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/RealmSwift@26.5.spm.zip",
      checksum: "cfc9f0e708287cf8805bd01eddcdbd4cfe0a6cba9413ea391a99a77b4e913d93"
    ),
  ]
)
