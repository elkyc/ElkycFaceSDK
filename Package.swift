// swift-tools-version:5.3
import PackageDescription

let version = "1.2.8"
let checksum = "cfdeaf8f691c5017ca1c3cc9ca796e6abfba0ca596bdce91303f17eeeaa6ec8d"

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