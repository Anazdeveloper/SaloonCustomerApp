import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saloon_customer_app/flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async => await runner.main());
}