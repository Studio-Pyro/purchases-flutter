<p align="center">
  <img src="https://uploads-ssl.webflow.com/5e2613cf294dc30503dcefb7/5e752025f8c3a31d56a51408_logo_red%20(1).svg" width="350" alt="RevenueCat"/>
<br>
  
[![pub package](https://img.shields.io/pub/v/purchases_flutter.svg)](https://pub.dartlang.org/packages/purchases_flutter)

## purchases_flutter

*purchases_flutter* is a client for the [RevenueCat](https://www.revenuecat.com/) subscription and purchase tracking system. It is an open source framework that provides a wrapper around `StoreKit`, `Google Play Billing` and the RevenueCat backend to make implementing in-app subscriptions in `Flutter` easy - receipt validation and status tracking included!

## Features
|   | RevenueCat |
| --- | --- |
✅ | Server-side receipt validation
➡️ | [Webhooks](https://docs.revenuecat.com/docs/webhooks) - enhanced server-to-server communication with events for purchases, renewals, cancellations, and more  
🎯 | Subscription status tracking - know whether a user is subscribed whether they're on iOS or Android
📊 | Analytics - automatic calculation of metrics like conversion, mrr, and churn  
📝 | [Online documentation](https://docs.revenuecat.com/docs/flutter) and [SDK Reference](https://pub.dev/documentation/purchases_flutter/latest/) up to date  
🔀 | [Integrations](https://www.revenuecat.com/integrations) - over a dozen integrations to easily send purchase data where you need it  
💯 | Well maintained - [frequent releases](https://github.com/RevenueCat/purchases-flutter/releases)  
📮 | Great support - [Help Center](https://revenuecat.zendesk.com) 

## Installation
To use this plugin, add `purchases_flutter` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

### Requirements
*purchases_flutter* requires Xcode 14.0+ and minimum targets iOS 13.0+/Android SDK 21+ (Android 5.0+).

### Samsung Galaxy Store (Studio-Pyro fork)
This fork adds Galaxy Store support on Android. It is not part of the upstream RevenueCat release.

Galaxy Store support comes in two packages:

- `purchases_flutter` holds the Dart API (`GalaxyConfiguration`, `GalaxyBillingMode`). It keeps Android `minSdk` 21 and does not include the Samsung IAP SDK.
- `purchases_flutter_store_galaxy` adds the RevenueCat Galaxy Store module and the Samsung IAP SDK. It needs Android `minSdk` 23 or higher and adds the `com.samsung.android.iap.permission.BILLING` permission. Add it only to apps that sell through the Galaxy Store.

```dart
await Purchases.configure(
  GalaxyConfiguration('galx_your_api_key',
      galaxyBillingMode: GalaxyBillingMode.test), // null uses production
);
```

You can also set `store = Store.galaxy` and `galaxyBillingMode` on a `PurchasesConfiguration`. The billing mode is ignored unless the store is `Store.galaxy`. iOS, macOS and web ignore both settings.

If the app configures the Galaxy Store without `purchases_flutter_store_galaxy`, `Purchases.configure` throws a `PlatformException` with code `23` (`PurchasesErrorCode.configurationError`).

Take both packages from this fork. Put `purchases_flutter` in `dependency_overrides`, because `purchases_ui_flutter` and `purchases_flutter_store_galaxy` depend on `purchases_flutter` from pub.dev.

```yaml
dependencies:
  purchases_flutter: ^10.13.2
  purchases_flutter_store_galaxy:
    git:
      url: https://github.com/Studio-Pyro/purchases-flutter.git
      ref: galaxy-store
      path: purchases_flutter_store_galaxy

dependency_overrides:
  purchases_flutter:
    git:
      url: https://github.com/Studio-Pyro/purchases-flutter.git
      ref: galaxy-store
```

## SDK Reference
 Our full SDK reference [can be found here](https://pub.dev/documentation/purchases_flutter/latest/).

## Getting Started
For more detailed information, you can view our complete documentation at [docs.revenuecat.com](https://docs.revenuecat.com/docs/flutter).
