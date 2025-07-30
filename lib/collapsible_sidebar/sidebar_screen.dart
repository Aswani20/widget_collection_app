import 'package:flutter/material.dart';
import 'package:template_app/collapsible_sidebar/sidebar.dart';
import '../core/route/app_routes.dart';
import '../flutter_toasr/flutter_toast.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sidebar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //dependecy
          // you can remove this two lines
          ToastMessage.toastMsg("Go to Home", Colors.green, Colors.white);
          Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation, color: Colors.white,),
      ),
    );
  }
}
