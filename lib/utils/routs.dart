import 'package:flutter/cupertino.dart';
import '../screens/home.dart';
import 'app_rout.dart';


Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().colorPellet: (context) => const ColorPellets(),
};