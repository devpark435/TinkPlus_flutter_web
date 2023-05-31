import 'package:flutter/material.dart';
import 'package:tinkplus_handover_web/utils/Typografie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: const [
          Expanded(flex: 3, child: HomeTopWidget()),
          Expanded(flex: 4, child: HomeBottomWidget()),
          Expanded(flex: 1, child: HomeFooter())
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
              child: Stack(
                children: [
                  Container(
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
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Typografie()
                                  .labelLarge("업무 가이드라인", Colors.black54),
                            )),
                        Expanded(
                          flex: 2,
                          child: Typografie().labelLarge("~~~", Colors.black54),
                        )
                      ],
                    ),
                  )
                ],
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

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.shade600,
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Typografie().labelMedium(
                "해당 사이트는 업무에 어려움을 격고 있는 신입 회사원들을 위해 제작된 사이트입니다.",
                Colors.white60),
            Typografie().labelMedium("내용 수정 문의 : -----", Colors.white60),
          ],
        )),
      ),
    );
  }
}
