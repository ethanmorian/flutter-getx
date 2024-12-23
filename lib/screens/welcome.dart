import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Welcome'),
            Obx(() => Text(AuthController.instance.userName.value)),
            Text(AuthController.instance.user!.email.toString()),
            IconButton(
              onPressed: () {
                AuthController.instance.logout();
              },
              icon: Icon(Icons.login_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
