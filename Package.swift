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
      url: "https://github.com/shmakovigor/realm/releases/download/v20.0.4/Realm.xcframework.zip",
      checksum: "0014a034372f46e0cdbd6145f83f698e932e0866a0090ed34d60ab4ff4810e91"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/shmakovigor/realm/releases/download/v20.0.4/RealmSwift.xcframework.zip",
      checksum: "b39fa5be0d2bbf97d360ce4aa088bee8bd6d99189d4974fc2ba36274e1c888e3"
    ),
  ]
)
