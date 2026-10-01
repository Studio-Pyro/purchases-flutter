## purchases_flutter_store_galaxy

Samsung Galaxy Store add-on for [purchases_flutter](https://pub.dev/packages/purchases_flutter). It adds the RevenueCat Galaxy Store module and the Samsung IAP SDK to your Android build. It has no Dart API and does nothing on iOS, macOS or web.

Apps that do not sell through the Galaxy Store do not need this package. Without it, Android builds keep `minSdk` 21 and do not get the Samsung billing permission.

## Installation

Add `purchases_flutter` and `purchases_flutter_store_galaxy` to your `pubspec.yaml`. Use the same version for both.

## Requirements

- Android `minSdk` 23 or higher.
- The Galaxy Store module adds the `com.samsung.android.iap.permission.BILLING` permission to your app.

## Usage

Configure `purchases_flutter` with a Galaxy Store API key:

```dart
await Purchases.configure(
  GalaxyConfiguration('galx_your_api_key',
      galaxyBillingMode: GalaxyBillingMode.test),
);
```

`galaxyBillingMode` is optional. Null uses `GalaxyBillingMode.production`.

If you configure the Galaxy Store without this package, `Purchases.configure` throws a `PlatformException` with code `23` (`PurchasesErrorCode.configurationError`).
