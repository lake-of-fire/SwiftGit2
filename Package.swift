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
        //.package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "4.0.0")),
        //.package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "9.2.1")),
////        .package(url: "https://github.com/mfcollins3/libssh2-apple.git", branch: "main"),
//        .package(
//              url: "https://github.com/mfcollins3/libssh2-apple.git",
//              .upToNextMajor(from: "0.1.0")
//          ),
//        .package(url: "https://github.com/lake-of-fire/libgit2.git", branch: "main"),
//        .package(url: "https://github.com/lake-of-fire/libgit2-apple.git", branch: "main"),
        .package(url: "https://github.com/lake-of-fire/static-libgit2.git", branch: "main"),
//        .package(url: "https://github.com/lake-of-fire/LibGit2-On-iOS-thebaselab.git", branch: "master"),
//        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", branch: "main"),
    ],
    targets: [
//        .binaryTarget(
//                name: "libgit2",
//                url: "https://github.com/holzschu/libgit2/releases/download/ios_1.0/lg2.xcframework.zip",
//                checksum: "7d205a771be8d120a80d2f7281135dfffd21a3713c86eb4f1957638f6b4b365e"
//            ),
            // Package
        /*
        .binaryTarget(
            name: "libgit2",
            url: "https://github.com/mfcollins3/libgit2-apple/releases/download/0.1.0/libgit2.zip",
            checksum: "488ea08d20ea4a651f56d271e8f793e92f07dd03e77447ab8dfd8846680a9cae"
        ),
         */
//        .binaryTarget(
//            name: "Clibgit2",
//            //url: "https://github.com/thebaselab/Clibgit2",
////            url: "https://github.com/allotropeinc/Clibgit2.git",
////            url: "https://github.com/lake-of-fire/Clibgit2.git",
//            url: "https://github.com/lake-of-fire/LibGit2-On-iOS/releases/download/4/Clibgit2.xcframework.zip",
//            checksum: "d337a75cd9c9ffb4605d20876ec0397e761c782740d3e4d3a9b0f47642adaeed"
//        ),
//        .target(
//            name: "Clibgit2",
//            dependencies: ["Clibgit2Binary"],
//            publicHeadersPath: "libgit2"
//        ),
//            .target(
//                name: "CGit",
//                publicHeadersPath: "./",
//                linkerSettings: [
//                    .linkedLibrary("iconv"),
//                    .linkedLibrary("z")
//                ]
//            ),
            .target(
            name: "SwiftGit2",
            dependencies: [
//                "libgit2",
//                "Clibgit2",
//                "CGit",
//                "libgit2",
//                .product(name: "SSH2", package: "libssh2-apple"),
                //.product(name: "Clibgit2", package: "LibGit2-On-iOS-thebaselab"),
//                .product(name: "CGit", package: "libgit2-apple"),
//                .product(name: "OpenSSL", package: "OpenSSL"),
                .product(name: "static-libgit2", package: "static-libgit2"),
            ]//,
//            linkerSettings: [
//                .linkedLibrary("iconv"),
//                .linkedLibrary("z"),
//                //.linkedLibrary("git2"),
//            ]
        )
    ]
)
