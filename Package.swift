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
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.6/Realm.spm.zip",
      checksum: "42e51f16748b379d475f8677f2bdefca81b0519ee9c7f6a13ae156ba8c9bff8d"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.6/RealmSwift@27.spm.zip",
      checksum: "a761ce46547dee67f374a0b3387a6ffbee94e2bc1136933e5f2c1f8e77964c79"
    ),
  ]
)
