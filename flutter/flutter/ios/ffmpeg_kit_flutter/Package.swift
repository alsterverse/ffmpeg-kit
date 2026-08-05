// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
    name: "ffmpeg_kit_flutter",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "ffmpeg-kit-flutter", targets: ["ffmpeg_kit_flutter"]),
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "ffmpeg_kit_flutter",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                "ffmpegkit",
                "libavcodec",
                "libavdevice",
                "libavfilter",
                "libavformat",
                "libavutil",
                "libswresample",
                "libswscale",
            ],
            cSettings: [
                .headerSearchPath("include/ffmpeg_kit_flutter"),
            ]
        ),
        .binaryTarget(
            name: "ffmpegkit",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/ffmpegkit.xcframework"
        ),
        .binaryTarget(
            name: "libavcodec",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "libavdevice",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "libavfilter",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "libavformat",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libavformat.xcframework"
        ),
        .binaryTarget(
            name: "libavutil",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libavutil.xcframework"
        ),
        .binaryTarget(
            name: "libswresample",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libswresample.xcframework"
        ),
        .binaryTarget(
            name: "libswscale",
            path: "Frameworks/ffmpeg-kit-min-gpl-6/libswscale.xcframework"
        ),
    ]
)
