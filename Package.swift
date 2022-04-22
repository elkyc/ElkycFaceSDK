// swift-tools-version:5.3
import PackageDescription

let version = "1.3.1"
let checksum = "4641c7189b1c6e74b1e3e28a400eb2cef4f523bd134e73c10de2e9266b000ad1"

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