import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class IosAR extends StatefulWidget {
  const IosAR({Key? key}) : super(key: key);

  @override
  State<IosAR> createState() => _IosARState();
}

class _IosARState extends State<IosAR> {
  late ARKitController arkitController;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('ARKit in Flutter')),
      body: ARKitSceneView(onARKitViewCreated: onARKitViewCreated));

  void onARKitViewCreated(ARKitController controller) {
    arkitController = controller;
    final node = ARKitNode(
        geometry: ARKitSphere(radius: 0.1), position: Vector3(0, 0, -0.5));
    arkitController.add(node);
  }

  @override
  void dispose() {
    arkitController.dispose();
    super.dispose();
  }
}
