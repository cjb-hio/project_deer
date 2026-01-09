import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:project_deer/core/go_router.dart';
import 'package:project_deer/ui/widget/load_image.dart';
import 'package:project_deer/util/log_utils.dart';
import 'package:rxdart/rxdart.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    _streamSubscription = Stream.value(1)
        .delay(const Duration(milliseconds: 1500))
        .listen((_) {
      _goSplashPage();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: 0.3,
          widthFactor: 0.33,
          child: LoadAssetsImage("logo"),
        ),
      ),
    );
  }

  void _goSplashPage() {
    context.replace(ROUTE_GUIDE);
  }
}
