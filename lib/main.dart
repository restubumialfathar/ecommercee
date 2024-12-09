import 'package:device_preview/device_preview.dart'; // Tambahkan ini
import 'package:ecommercee/state_managements/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ecommercee/components/costum_navigation_bar.dart';
import 'package:ecommercee/routes.dart';
import 'package:ecommercee/screens/splash/splash_screen.dart';
import 'package:ecommercee/state_managements/auth_provider.dart';
import 'package:ecommercee/state_managements/cart_provider.dart';
import 'package:ecommercee/state_managements/favorite_provider.dart';
import 'package:ecommercee/state_managements/theme_provider.dart';
import 'package:ecommercee/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
  
  runApp(
    DevicePreview( // Bungkus aplikasi dengan DevicePreview
      enabled: true, // Ubah ke `false` jika ingin mematikan
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthProvider()),
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => CartProvider()),
          ChangeNotifierProvider(create: (context) => FavoriteProvider()),
          ChangeNotifierProvider(create: (context) => SearchProvider()),
        ],
        child: MainApp(isLoggedIn: isLoggedIn),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.isLoggedIn});

  final bool isLoggedIn;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true, // Tambahkan untuk mendukung DevicePreview
          locale: DevicePreview.locale(context), // Lokalisasi dari DevicePreview
          builder: DevicePreview.appBuilder, // Tambahkan builder untuk DevicePreview
          initialRoute: isLoggedIn ? CustomNavigationBar.routeName : SplashScreen.routeName,
          theme: themeData(theme.isDarkMode),
          routes: routes,
        );
      },
    );
  }
}
