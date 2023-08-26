enum Flavor {
  dev,
  uat,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Flutter&Friends DEV';
      case Flavor.uat:
        return 'Flutter&Friends UAT';
      case Flavor.prod:
        return 'Flutter&Friends PROD';
      default:
        return 'title';
    }
  }

}
