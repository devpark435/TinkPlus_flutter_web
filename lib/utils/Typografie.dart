import 'package:flutter/material.dart';

/// 프로젝트에서 사용하는 모든 텍스트의 규격을 지정하고 관리하는 클래스 ///

class Typografie {
  Widget splashLarge(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 70.0,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget splashMedium(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget headlineLarge(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: 80.0,
          fontWeight: FontWeight.w900,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(3.0, 5.0),
              blurRadius: 10.0,
              color: color!,
            ),
          ]),
    );
  }

  Widget headlineMedium(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 31.0,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget headlineSmall(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 29.0,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Widget titleLarge(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 27.0,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget titleMedium(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget titleSamll(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 23.0,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Widget labelLarge(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 32.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget labelMedium(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 19.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget labelSamll(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 17.0,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  Widget bodyLarge(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 25.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget bodyMedium(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 13.0,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget bodySmall(String text, Color? color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 11.0,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
