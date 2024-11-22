import 'package:flutter/material.dart';
import 'package:go_router_demo/ui/route/route.dart';
import 'package:go_router_demo/ui/route/routes_keys.dart';

class Profile extends StatelessWidget {
  final String name;

  const Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            /// Navigate To Settings Screen
            router.go(RouteKeys.settings);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              /// Navigate To Settings Screen
              router.go(RouteKeys.settings);
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      ),
      body: InkWell(
        onTap: () {
          router.go(RouteKeys.settings);
        },
        child: Container(
          alignment: Alignment.center,
          height: screenHeight,
          width: screenWidth,
          color: Colors.greenAccent,
          child: const Text(
            'Tap To Go Back To Settings',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
