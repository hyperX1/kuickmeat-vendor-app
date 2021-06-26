// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:kuickmeat_vendor_app/screens/login_screen.dart';
//
// class SignOut extends StatefulWidget {
//   @override
//   _SignOutState createState() => _SignOutState();
// }
//
// class _SignOutState extends State<SignOut> {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Sign out?',style: TextStyle(fontWeight: FontWeight.bold),),
//       content: Text('Are you sure you want to signOut?',style: TextStyle(fontSize: 15),),
//       actions: [
//         TextButton(
//           child: Text(
//             'Yes',
//             style: TextStyle(
//                 color: Theme.of(context).primaryColor,
//                 fontWeight: FontWeight.bold),
//           ),
//           onPressed: () {
//             FirebaseAuth.instance.signOut().then((value){
//               setState(() {
//                 EasyLoading.show(status: 'Signing out');
//                 Navigator.pushNamed(context, LoginScreen.id);
//               });
//               EasyLoading.dismiss();
//             });
//           },
//         ),
//         TextButton(
//           child: Text(
//             'No',
//             style: TextStyle(
//                 color: Theme.of(context).primaryColor,
//                 fontWeight: FontWeight.bold),
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ],
//     );
//   }
// }
//
//
