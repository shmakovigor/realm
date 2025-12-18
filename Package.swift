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
      url: "https://github.com/realm/realm-swift/releases/download/v10.54.6/Realm.spm.zip",
      checksum: "5cab4055cc6c63a9c33a18d0bee6e9a615dd6867a46a4db70ca76894dbfc2261"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/realm/realm-swift/releases/download/v10.54.6/RealmSwift@26.0.1.spm.zip",
      checksum: "b80ecd851282c1778e665ec0fcf84777a93b7679f7e564fd02e6fb649f4e3e87"
    ),
  ]
)
