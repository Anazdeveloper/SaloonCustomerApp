enum Flavor {
  dev,
  stage,
  prod,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Dev - SaloonCustomer';
      case Flavor.stage:
        return 'Stage - SaloonCustomer';
      case Flavor.prod:
        return 'SaloonCustomer';
    }
  }

}
