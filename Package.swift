// swift-tools-version:5.3
import PackageDescription

let version = "2.1.5"
let checksum = "160c22e3b42822f5710a32eee661681bebea75858dc71d1f782f9f8079ca516e"

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
