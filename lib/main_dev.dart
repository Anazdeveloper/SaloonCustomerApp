import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:saloon_customer_app/flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async => await runner.main());
}