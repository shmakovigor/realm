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
      url: "https://github.com/shmakovigor/realm/releases/download/v20.0.6-xcode27.2/Realm.spm.zip",
      checksum: "32be7c5b2f30bee2abf03f4407691eeb813133a6d936ea723e02529fc4c0cf45"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/shmakovigor/realm/releases/download/v20.0.6-xcode27.2/RealmSwift.spm.zip",
      checksum: "5e084ee48e3dd7b75dfc8e345daf2794b992870458663d09e398594800ce6c72"
    ),
  ]
)
