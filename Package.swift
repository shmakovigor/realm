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
      checksum: "2c6c760730b3cca3eee93bbe138df696f85ed46550222f310976be226bc693e8"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/realm/realm-swift/releases/download/v20.0.5/RealmSwift@26.5.spm.zip",
      checksum: "3598552815548c4ef583e53ee84ffc3c8d2233fd0eedad1303f59f6ef5b798cc"
    ),
  ]
)
