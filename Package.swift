// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGit2",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftGit2",
            targets: ["SwiftGit2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "Quick",
            url: "https://github.com/Quick/Quick.git",
            .upToNextMajor(from: "4.0.0")
        ),
        .package(
            name: "Nimble",
            url: "https://github.com/Quick/Nimble.git",
            .upToNextMajor(from: "9.2.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "Clibgit2",
            //url: "https://github.com/thebaselab/Clibgit2",
//            url: "https://github.com/allotropeinc/Clibgit2.git",
//            url: "https://github.com/lake-of-fire/Clibgit2.git",
            url: "https://github.com/lake-of-fire/LibGit2-On-Apple/releases/download/1/Clibgit2.xcframework.zip",
            checksum: "7752554ec4e33febc1465e1b88fe8fdc00d14927fcafbbfb50f2c8abadbf52d8"
        ),
//        .target(
//            name: "Clibgit2",
//            dependencies: ["Clibgit2Binary"],
//            publicHeadersPath: "libgit2"
//        ),
        .target(
            name: "SwiftGit2",
            dependencies: ["Clibgit2"]
        )
    ]
)
