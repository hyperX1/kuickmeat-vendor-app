import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:kuickmeat_vendor_app/providers/auth_provider.dart';
import 'package:kuickmeat_vendor_app/providers/order_provider.dart';
import 'package:kuickmeat_vendor_app/providers/product_provider.dart';
import 'package:kuickmeat_vendor_app/screens/add_edit_coupon_screen.dart';
import 'package:kuickmeat_vendor_app/screens/add_newproduct_screen.dart';
import 'package:kuickmeat_vendor_app/screens/home_screen.dart';
import 'package:kuickmeat_vendor_app/screens/login_screen.dart';
import 'package:kuickmeat_vendor_app/screens/register_screen.dart';
import 'package:kuickmeat_vendor_app/screens/reset_password_screen.dart';
import 'package:kuickmeat_vendor_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        fontFamily: 'Lato',
      ),
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ResetPassword.id: (context) => ResetPassword(),
        AddNewProduct.id: (context) => AddNewProduct(),
        AddEditCoupon.id: (context) => AddEditCoupon(),
      },
    );
  }
}
