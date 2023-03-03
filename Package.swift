// swift-tools-version:5.3
import PackageDescription

let version = "2.1.3"
let checksum = "2e2ebc81e80df7d22349438093ff4a4a5d76de12d0af997f1ab201502bf2e499"

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
            url: "https://pods.regulaforensics.com/FaceSDK/5.1.1368/FaceSDK-5.1.1368.zip",
            checksum: "c47aa154a4b330a24b426c674acae1a8841a6cb8c81d4c1a218fe0714139d0a8")
    ]
)
