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
            url: "https://pods.regulaforensics.com/FaceSDK/4.1.1153/FaceSDK-4.1.1153.zip",
            checksum: "48611ea7ec22ab0f0d1ef07371001d7b918e50875b65c1b351d7ebf17ab6d014")
    ]
)
