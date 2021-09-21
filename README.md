Library is focused on vision features, it is a part of [Elkyc](https://elkyc.com) ecosystem.

- [Features](#features)
- [Component Libraries](#component-libraries)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Predefined steps](#predefined-steps)

# Features
- [x] Face Liveness detection
- [x] Face Matching
- [x] Face Capture

# Component Libraries
ElkycFaceSDK does not have any components but it is dependent on [ElkycCoreSDK](https://github.com/elkyc/ElkycCoreSDK)

# Requirements

- iOS 11.0+ 
- Xcode 11+
- Swift 5.1+

# Permissions
## Camera

This is achieved easily by adding the NSCameraUsageDescription key to the Info.plist along with usage description string. This usage string is displayed when the user is asked to allow access, so localization may be desired depending on your user base.

# Installation
## CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate ElkycFaceSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'git@github.com:elkyc/ElkycPodsRepo.git'

pod 'ElkycFaceSDK'
```
## Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate ElkycFaceSDK into your project manually.

- Open up Terminal, `cd` into your directory, and run the following:

  ```bash
  $ git clone git@github.com:elkyc/ElkycFaceSDK ElkycFaceSDK
  ```
- Open the new `ElkycFaceSDK` folder, and drag the `ElkycFaceSDK.xcframework` into the Project Navigator of your application's Xcode project.

# Usage
## Introduction
ElkycFaceSDK will help you to verify the person in comparison to his documents for example, the goal is to build easy steps which you can run and get the result to your system or in your application.

Don't forget that framework depends on [ElkycCoreSDK](https://github.com/elkyc/ElkycCoreSDK). Please read the documentation there first.

The whole process is going synchronously from the first to the last step. During the process, data will be sent to our or your backend. The process will stop if **any** of the steps will return an error.

## Predefined steps
In this section, I will describe all available steps in the current framework, their configs and will show how they look like. 

Right now all steps localized in Russian and English.

### FaceCapturing
Use this step if you want to capture person face.

**Output:**

UIImage with person's face.

### FaceMatching
This step matches two faces. You as well can specify sourceType for the image. This step does not have any UI and does async work, be aware of this, maybe you want to show some additional progress indicator.

**Input:**

- firstImage: InputImage, secondImage: InputImage

```swift
public struct InputImage {
	public enum `Type` {
		case printed
		case rfid
		case live
		case liveWithDoc
	}

	public let image: UIImage
	public let type: Type
}
```

**Output:**

Response struct with input images, isMatched flag and similarity value.

```swift
public struct Response {
	public let firstImage: UIImage
	public let secondImage: UIImage
	public let isMatched: Bool
	public let similarity: Double
}
```

### FaceLiveness
If you want to understand is person alive or not, then this step is for you. It will ask person to do two pictures and returns the result for you.

**Input:**

- attemptsCount, the number of attempts to try.

**Output:**

Response struct with person's photo and isLive flag

```swift
public struct Response {
	public let image: UIImage?
	public let isLive: Bool
        public let guid: String?
}
```
