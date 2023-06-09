import 'package:color_app/provider/palette_provider.dart';
import 'package:color_app/provider/them_provider.dart';
import 'package:color_app/utils/app_rout.dart';
import 'package:color_app/utils/routs.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PaletteProvider>(
          create: (context) => PaletteProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder:(context,_) => MaterialApp(
        themeMode: (Provider.of<ThemeProvider>(context).obj.isDark) ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData(
          primaryColor: Colors.black.withOpacity(0.7),
          backgroundColor: Color(0XFFFFFFFF),
          dialogBackgroundColor: Color(0XFF88CCCC),
          secondaryHeaderColor: Colors.black,
          fontFamily: "Poppins",
          cardColor: Colors.black54,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: Color(0XFFBB86FC),
          dialogBackgroundColor: Color(0XFF121212),
          secondaryHeaderColor: Colors.white,
          cardColor: Colors.grey.withOpacity(0.6),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          fontFamily: "Poppins",
        ),
        debugShowCheckedModeBanner: false,
        title: "Color Palate Generator App",
        //home: HomePage(),
        initialRoute: AppRoutes().colorPellet,
        routes: routes,
      ),
    );
  }
}