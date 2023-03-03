// swift-tools-version:5.3
import PackageDescription

let version = "2.1.4"
let checksum = "776c5e6197e9da450bc86f65dde497a0d99744cc4738d844bab4e376ed330de8"

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
