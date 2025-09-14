import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login_mask.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Fitness',
      home: PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text('Flutter Fitness'),
          backgroundColor: ThemeData.light().primaryColorLight,
        ),
        body: LoginMask(),
        ),
      );
  }
}
