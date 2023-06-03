// swift-tools-version:5.3
import PackageDescription

let version = "2.2.0"
let checksum = "81a528ef05d8639c6eeb13b57552bafcfd04bd9a35bd3c1bbaf9816a6c77fe91"

let package = Package(
    name: "ElkycFaceSDK",
    products: [
        .library(
            name: "ElkycFaceSDK",
            targets: ["ElkycFaceSDK", "FaceSDK", "Liveness"]),
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
            name: "Liveness",
            url: "https://pods.regulaforensics.com/FaceCoreSDK/5.1.315/FaceCoreSDK-5.1.315.zip",
            checksum: "97d27f30798fecd8dc4ece4a3f85a393f8c956f4beccbe510fcdb3a4d8103f2a"),
        .binaryTarget(
            name: "RegulaCommon",
            url: "https://pods.regulaforensics.com/RegulaCommon/6.8.324/RegulaCommon-6.8.324.zip",
            checksum: "8e82f1e4cfd538261486091362bd26b763472f77ee3ef160d22639c55beeed6e")
        
    ]
)
