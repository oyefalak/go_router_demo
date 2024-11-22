import 'package:flutter/material.dart';
import 'package:go_router_demo/ui/route/route.dart';
import 'package:go_router_demo/ui/route/routes_keys.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          /// Navigate To Settings Screen
          router.go(RouteKeys.settings);
        },
        child: Container(
          alignment: Alignment.center,
          height: screenHeight,
          width: screenWidth,
          color: Colors.redAccent,
          child: const Text(
            'Tap To Go to Settings',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
