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
      url: "https://github.com/shmakovigor/realm/releases/download/v10.54.6/Realm.xcframework.zip",
      checksum: "6bebe800f5fe04e4dd3a0566670fbaa1986d68262652070d9810f46dc33258bd"
    ),
    .binaryTarget(
      name: "RealmSwift",
      url: "https://github.com/shmakovigor/realm/releases/download/v10.54.6/RealmSwift.xcframework.zip",
      checksum: "7c21c29c023224b60ddd303fbe7930bbbfe8acc3f9db2532430cf9fee1cf30ac"
    ),
  ]
)
