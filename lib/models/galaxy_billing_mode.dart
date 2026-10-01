/// Billing modes for the Samsung Galaxy Store.
/// Used by [PurchasesConfiguration.galaxyBillingMode].
enum GalaxyBillingMode {
  /// Real purchases. Use this for builds distributed through the Galaxy Store.
  production,

  /// Purchases succeed without charging. Only works for license testers
  /// registered in the Samsung Seller Portal.
  test,

  /// Every purchase fails. Use this to test error handling.
  alwaysFail,
}

extension GalaxyBillingModeExtension on GalaxyBillingMode {
  String get name {
    switch (this) {
      case GalaxyBillingMode.production:
        return 'PRODUCTION';
      case GalaxyBillingMode.test:
        return 'TEST';
      case GalaxyBillingMode.alwaysFail:
        return 'ALWAYS_FAIL';
    }
  }
}
