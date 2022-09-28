import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permisson Page"),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () async {
                await openAppSettings();
              }),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.camera.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text("Get Permission Camera")),
          ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.location.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text("Get Permission Locastion")),
          ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.bluetoothScan.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text("Get Permission Bluetooth")),
          ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.sensors.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text("Get Permission Sensor")),
          ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.storage.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$res"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Text("Get Permission Storage")),
        ],
      ),
    );
  }
}
