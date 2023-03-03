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
            url: "https://pods.regulaforensics.com/FaceSDK/4.1.1153/FaceSDK-4.1.1153.zip",
            checksum: "48611ea7ec22ab0f0d1ef07371001d7b918e50875b65c1b351d7ebf17ab6d014")
    ]
)
