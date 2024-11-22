import 'package:flutter/material.dart';
import 'package:go_router_demo/ui/route/route.dart';
import 'package:go_router_demo/ui/route/routes_keys.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    /// Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            /// Navigate To Home Screen
            router.go(RouteKeys.home);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text('Settings'),
      ),
      body: InkWell(
        onTap: () {
          /// Navigate To Profile Screen
          router.go('${RouteKeys.settings}${RouteKeys.profile}?name=ShabbirRajput', extra: 'Shabbir Rajput');
        },
        child: Container(
          alignment: Alignment.center,
          height: screenHeight,
          width: screenWidth,
          color: Colors.indigoAccent,
          child: const Text(
            'Tap To Go to Profile',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
