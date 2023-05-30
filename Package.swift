// swift-tools-version:5.3
import PackageDescription

let version = "2.1.5"
let checksum = "160c22e3b42822f5710a32eee661681bebea75858dc71d1f782f9f8079ca516e"

let package = Package(
    name: "ElkycFaceSDK",
    products: [
        .library(
            name: "ElkycFaceSDK",
            targets: ["ElkycFaceSDK", "FaceSDK", "FaceCoreSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "ElkycFaceSDK",
            url: "https://github.com/elkyc/ElkycFaceSDK/releases/download/v\(version)/ElkycFaceSDK.xcframework.zip",
            checksum: checksum),
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/FaceSDK/5.1.1472/FaceSDK-5.1.1472.zip",
            checksum: "d47a1d1ffb7f87ed2a22fcecc675f398d688d7a1b80d673009ca2e443a82d159"),
        .binaryTarget(
            name: "FaceCoreSDK",
            url: "https://pods.regulaforensics.com/FaceCoreSDK/5.1.315/FaceCoreSDK-5.1.315.zip",
            checksum: "97d27f30798fecd8dc4ece4a3f85a393f8c956f4beccbe510fcdb3a4d8103f2a")
    ]
)
