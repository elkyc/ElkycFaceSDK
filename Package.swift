// swift-tools-version:5.3
import PackageDescription

let version = "2.1.2"
let checksum = "512b048e52bb74b548c6ad0802f6502ea3a029d29ea5579b95d3200aff8c533c"

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
            url: "https://pods.regulaforensics.com/FaceSDK/4.1.1153/FaceSDK-4.1.1153.zip",
            checksum: "48611ea7ec22ab0f0d1ef07371001d7b918e50875b65c1b351d7ebf17ab6d014")
    ]
)
