import 'package:flutter/material.dart';
import 'package:tinkplus_handover_web/utils/Typografie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
          child: Column(
        children: const [
          Expanded(flex: 1, child: HomeTopWidget()),
          Expanded(flex: 1, child: HomeBottomWidget()),
        ],
      )),
    );
  }
}

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Typografie().headlineLarge("THINK", Colors.blueAccent.shade100),
              Typografie().headlineLarge(" PLUS ", Colors.purple.shade800),
              Typografie().headlineLarge("FEEL", Colors.pinkAccent.shade100),
            ],
          ),
        ));
  }
}

class HomeBottomWidget extends StatelessWidget {
  const HomeBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple.shade800,
                      Colors.blueAccent.shade100,
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.pinkAccent.shade100,
                      Colors.purple.shade800,
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
