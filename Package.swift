// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppLovinSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AppLovinSDK",
            targets: ["AppLovinSDKResources"]
        ),
        // MARK: - Mediation Adapters
        .library(name: "AppLovinDSPLinkedInAdapter", targets: ["AppLovinDSPLinkedInAdapter"]),
        .library(name: "AppLovinMediationAmazonAdMarketplaceAdapter", targets: ["AppLovinMediationAmazonAdMarketplaceAdapter"]),
        .library(name: "AppLovinMediationBidMachineAdapter", targets: ["AppLovinMediationBidMachineAdapter"]),
        .library(name: "AppLovinMediationBigoAdsAdapter", targets: ["AppLovinMediationBigoAdsAdapter"]),
        .library(name: "AppLovinMediationByteDanceAdapter", targets: ["AppLovinMediationByteDanceAdapter"]),
        .library(name: "AppLovinMediationChartboostAdapter", targets: ["AppLovinMediationChartboostAdapter"]),
        .library(name: "AppLovinMediationFacebookAdapter", targets: ["AppLovinMediationFacebookAdapter"]),
        .library(name: "AppLovinMediationFyberAdapter", targets: ["AppLovinMediationFyberAdapter"]),
        .library(name: "AppLovinMediationGoogleAdManagerAdapter", targets: ["AppLovinMediationGoogleAdManagerAdapter"]),
        .library(name: "AppLovinMediationGoogleAdapter", targets: ["AppLovinMediationGoogleAdapter"]),
        .library(name: "AppLovinMediationInMobiAdapter", targets: ["AppLovinMediationInMobiAdapter"]),
        .library(name: "AppLovinMediationIronSourceAdapter", targets: ["AppLovinMediationIronSourceAdapter"]),
        .library(name: "AppLovinMediationLineAdapter", targets: ["AppLovinMediationLineAdapter"]),
        .library(name: "AppLovinMediationMintegralAdapter", targets: ["AppLovinMediationMintegralAdapter"]),
        .library(name: "AppLovinMediationMobileFuseAdapter", targets: ["AppLovinMediationMobileFuseAdapter"]),
        .library(name: "AppLovinMediationMolocoAdapter", targets: ["AppLovinMediationMolocoAdapter"]),
        .library(name: "AppLovinMediationMyTargetAdapter", targets: ["AppLovinMediationMyTargetAdapter"]),
        .library(name: "AppLovinMediationOguryPresageAdapter", targets: ["AppLovinMediationOguryPresageAdapter"]),
        .library(name: "AppLovinMediationPubMaticAdapter", targets: ["AppLovinMediationPubMaticAdapter"]),
        .library(name: "AppLovinMediationSmaatoAdapter", targets: ["AppLovinMediationSmaatoAdapter"]),
        .library(name: "AppLovinMediationUnityAdsAdapter", targets: ["AppLovinMediationUnityAdsAdapter"]),
        .library(name: "AppLovinMediationVerveAdapter", targets: ["AppLovinMediationVerveAdapter"]),
        .library(name: "AppLovinMediationVungleAdapter", targets: ["AppLovinMediationVungleAdapter"]),
        .library(name: "AppLovinMediationYSONetworkAdapter", targets: ["AppLovinMediationYSONetworkAdapter"]),
        .library(name: "AppLovinMediationYandexAdapter", targets: ["AppLovinMediationYandexAdapter"]),
    ],
    dependencies: [
        // Add dependencies for mediated networks here (e.g. GoogleMobileAds, FBAudienceNetwork, etc.)
        // .package(name: "GoogleMobileAds", url: "...", from: "...")
    ],
    targets: [
        // This is a wrapper target to configure various settings required by main binary target.
        .target(
            name: "AppLovinSDKResources",
            dependencies: [
                .target(name: "AppLovinSDK")
            ],
            linkerSettings: [
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Foundation"),
                .linkedFramework("MessageUI"),
                .linkedFramework("SafariServices"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                
                .linkedLibrary("z"),
                
                // NOTE: Swift Package Manager currently does not allow dependencies with unsafeFlags, unless a specific branch/commit is used.
                // For now, these flags should be added manually to the project for integration.
                // .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "AppLovinSDK",
            url: "https://artifacts.applovin.com/ios/com/applovin/applovin-sdk/AppLovinSDK-13.6.0.xcframework.zip",
            checksum: "a7f6701b24f67c55a0beabfcc06b31660590dceb410e3e6bae67b4fd4d817349"
        ),
        
        // MARK: - Mediation Adapters Binary Targets
        // NOTE: You must update the checksums for these targets. Run `swift package compute-checksum <zip-file>` to get the checksum.
        
        .binaryTarget(
            name: "AppLovinDSPLinkedInAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/dsp/linkedin-adapter/AppLovinDSPLinkedInAdapter-1.2.2.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinDSPLinkedInAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/amazonadmarketplace-adapter/AppLovinMediationAmazonAdMarketplaceAdapter-5.4.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationAmazonAdMarketplaceAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationBidMachineAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bidmachine-adapter/AppLovinMediationBidMachineAdapter-3.5.1.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationBidMachineAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationBigoAdsAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bigoads-adapter/AppLovinMediationBigoAdsAdapter-5.1.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationBigoAdsAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationByteDanceAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/bytedance-adapter/AppLovinMediationByteDanceAdapter-7.9.0.6.1.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationByteDanceAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationChartboostAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/chartboost-adapter/AppLovinMediationChartboostAdapter-9.11.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationChartboostAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationFacebookAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/facebook-adapter/AppLovinMediationFacebookAdapter-6.21.1.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationFacebookAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationFyberAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/fyber-adapter/AppLovinMediationFyberAdapter-8.4.5.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationFyberAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdManagerAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/googleadmanager-adapter/AppLovinMediationGoogleAdManagerAdapter-13.1.0.1.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationGoogleAdManagerAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/google-adapter/AppLovinMediationGoogleAdapter-13.1.0.1.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationGoogleAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationInMobiAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/inmobi-adapter/AppLovinMediationInMobiAdapter-11.1.1.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationInMobiAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationIronSourceAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ironsource-adapter/AppLovinMediationIronSourceAdapter-9.3.0.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationIronSourceAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationLineAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/line-adapter/AppLovinMediationLineAdapter-3.0.1.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationLineAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationMintegralAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mintegral-adapter/AppLovinMediationMintegralAdapter-8.0.7.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationMintegralAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationMobileFuseAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mobilefuse-adapter/AppLovinMediationMobileFuseAdapter-1.10.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationMobileFuseAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationMolocoAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/moloco-adapter/AppLovinMediationMolocoAdapter-4.4.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationMolocoAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationMyTargetAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/mytarget-adapter/AppLovinMediationMyTargetAdapter-5.40.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationMyTargetAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationOguryPresageAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ogurypresage-adapter/AppLovinMediationOguryPresageAdapter-5.2.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationOguryPresageAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationPubMaticAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/pubmatic-adapter/AppLovinMediationPubMaticAdapter-4.12.0.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationPubMaticAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationSmaatoAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/smaato-adapter/AppLovinMediationSmaatoAdapter-22.9.3.1.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationSmaatoAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationUnityAdsAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/unityads-adapter/AppLovinMediationUnityAdsAdapter-4.16.6.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationUnityAdsAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationVerveAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/verve-adapter/AppLovinMediationVerveAdapter-3.7.1.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationVerveAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationVungleAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/vungle-adapter/AppLovinMediationVungleAdapter-7.7.1.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationVungleAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationYSONetworkAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ysonetwork-adapter/AppLovinMediationYSONetworkAdapter-1.1.31.1.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationYSONetworkAdapter#>" 
        ),
        .binaryTarget(
            name: "AppLovinMediationYandexAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/yandex-adapter/AppLovinMediationYandexAdapter-7.18.4.0.zip",
            checksum: "<#SHA256_CHECKSUM_FOR_AppLovinMediationYandexAdapter#>" 
        ),
    ]
)
