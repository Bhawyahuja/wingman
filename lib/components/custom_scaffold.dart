import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.appBar,
    this.body,
  }) : super(key: key);

  final AppBar? appBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff5936F6),
            Color(0xff6625E8),
            Color(0xff7312D8),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if(appBar != null) appBar!,
            if (body != null) Expanded(child: body!),
          ],
        ),
      ),
    );
  }
}
