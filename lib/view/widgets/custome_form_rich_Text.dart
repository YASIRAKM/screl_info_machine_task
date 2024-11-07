
  import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:screl_machine_task/utils/colors.dart';

RichText customRichText({required bool isWideScreen}) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "You can set up a",
              style: TextStyle(
                  color: blackColor, fontSize: isWideScreen ? 14 : 12)),
          TextSpan(
            text: ' custom domain or connect your email service provider ',
            style: TextStyle(
                fontSize: isWideScreen ? 14 : 12,
                color: orangeColor,
                fontWeight: FontWeight.w600),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(
              text: "to change this.",
              style: TextStyle(
                  color: blackColor, fontSize: isWideScreen ? 14 : 12)),
        ]));
  }