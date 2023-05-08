import 'package:flutter/cupertino.dart';

import '../modal/app_them.dart';


class ThemeProvider extends ChangeNotifier{

  AppTheme obj = AppTheme(isDark: false);

  void changeTheme() {

    obj.isDark = !obj.isDark;
    notifyListeners();
  }

}