import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuickmeat_vendor_app/screens/banner_screen.dart';
import 'package:kuickmeat_vendor_app/screens/coupon_screen.dart';
import 'package:kuickmeat_vendor_app/screens/order_screen.dart';
import 'package:kuickmeat_vendor_app/screens/product_screen.dart';
import 'package:kuickmeat_vendor_app/services/order_services.dart';

class DrawerServices{
  OrderServices _services = OrderServices();
  Widget drawerScreen(title,context){if(title == 'Product'){
      return ProductScreen();
    }
    if(title == 'Banner'){
      return BannerScreen();
    }
    if(title == 'Coupons'){
      return CouponScreen();
    }
    if(title == 'Orders'){
      return OrderScreen();
    }
    if(title == 'LogOut'){
    return ProductScreen();
  }
    return ProductScreen();
  }


  /*signOutDialog({title, context}){
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text('Are you sure'),
            actions: [
              TextButton(
                child: Text(
                  'OK',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {

                  FirebaseAuth.instance.signOut().then((value){
                    EasyLoading.show(status: 'Signing out');
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                  EasyLoading.dismiss();
                },
              ),
              TextButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }*/
}


