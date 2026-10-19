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
      url: "https://github.com/shmakovigor/realm/releases/download/v20.0.6-xcode27.1/Realm.spm.zip",
      checksum: "f3592b0d587cf0007f26df768b1fefaa1eea17f338305506a77ec15d88ca2ae1"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/shmakovigor/realm/releases/download/v20.0.6-xcode27.1/RealmSwift.spm.zip",
      checksum: "9d3d8930551d7e28d5d2c88f977a7af872a10786ed4fa552e2cbba9ec9179818"
    ),
  ]
)
