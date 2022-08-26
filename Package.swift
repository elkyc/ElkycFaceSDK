// swift-tools-version:5.3
import PackageDescription

let version = "2.1.1"
let checksum = "0308f5c7332f1a4c1b18e20a732badd3b0483a92d0e79f48aa7a448fdd22ffb6"

let package = Package(
    name: "ElkycFaceSDK",
    products: [
        .library(
            name: "ElkycFaceSDK",
            targets: ["ElkycFaceSDK", "FaceSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ElkycFaceSDK",
            url: "https://github.com/elkyc/ElkycFaceSDK/releases/download/v\(version)/ElkycFaceSDK.xcframework.zip",
            checksum: checksum),
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/FaceSDK/3.2.1078/FaceSDK-3.2.1078.zip",
            checksum: "61c933084e5e3ea339e2aa1fa27c447fa97d9409f607229648ba43f62051efb1")
    ]
)