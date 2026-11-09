# RealmBinary (Swift Package)

Consume Realm and RealmSwift as prebuilt XCFramework binaries via Swift Package Manager.
This avoids compiling Realm from source in Debug builds and keeps your app snappy.

Contents
•	Realm.xcframework (Core)
•	RealmSwift.xcframework (Swift API)

You can use either the remote (URL + checksum) setup or local (path) setup.

## Current build

Realm and RealmSwift 20.0.6 (core 20.1.5), built with Xcode 27.2 (Swift 6.4.2, iOS SDK 27.2).
Slices: `ios-arm64` and `ios-arm64_x86_64-simulator`. Dynamic frameworks, unsigned.

Only the Xcode that built the binaries can import RealmSwift. Any other Xcode rebuilds the module from
its `.swiftinterface`, which leaves out the methods Realm implements on internal protocols
(`filter(NSPredicate)`, `sorted(by: [SortDescriptor])`, `min(ofProperty:)` and others), so client code
stops compiling. Rebuild after every Xcode update.

## Rebuilding for a new Xcode

```sh
git clone --depth 1 --branch v20.0.6 https://github.com/realm/realm-swift.git
cd realm-swift
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer   # the Xcode to build with
export REALM_EXTRA_BUILD_ARGUMENTS="REALM_BUILD_LIBRARY_FOR_DISTRIBUTION=YES CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO CODE_SIGN_IDENTITY="
sh build.sh download-core
sh build.sh ios-swift
cd build/Release/ios
zip -qry Realm.spm.zip Realm.xcframework
zip -qry RealmSwift.spm.zip RealmSwift.xcframework
shasum -a 256 Realm.spm.zip RealmSwift.spm.zip
```

Use `build.sh ios-swift`, not `build.sh xcframework`. The `xcframework` command post-processes the
`.swiftinterface` files by deleting every `Realm.`, which breaks the `::` module selectors that Swift 6.4
writes.

Upload both zips to a new release named `v<realm version>-xcode<xcode version>`, then point the two
binary targets in `Package.swift` at the new URLs and checksums. Upload first: the manifest can't resolve
until the zips exist.
