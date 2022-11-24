import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Themetype { messenger, whatsapp }

class SwitchColors {
  Color nuvvuBlack;
  Color nuvvuBlue;
  Color nuvvuDeepGreen;
  Color nuvvuLightGreen;
  Color nuvvugreen;
  Color nuvvuteagreen;
  Color nuvvuWhite;
  Color nuvvuGrey;
  Color nuvvuChatbackground;
  Color SplashBackgroundSolidColor; //applies this colors if "IsSplashOnlySolidColor" is set to true. Color Code: 0xFF005f56 for Whatsapp theme & 0xFFFFFFFF for messenger theme.
  Color statusBarColor;
  SwitchColors({
    required this.nuvvuBlack,
    required this.nuvvuBlue,
    required this.nuvvuDeepGreen,
    required this.nuvvuLightGreen,
    required this.nuvvugreen,
    required this.nuvvuteagreen,
    required this.nuvvuWhite,
    required this.nuvvuGrey,
    required this.nuvvuChatbackground,
    required this.SplashBackgroundSolidColor,
    required this.statusBarColor,
  });
}

class SwitchThemeViewModel with ChangeNotifier {
  final SwitchColors _whatsAppTheme = SwitchColors(
      nuvvuBlack: const Color(0xFF1E1E1E),
      nuvvuBlue: const Color(0xFF02ac88),
      nuvvuDeepGreen: const Color(0xFF01826b),
      nuvvuLightGreen: const Color(0xFF02ac88),
      nuvvugreen: const Color(0xFF098b74),
      nuvvuteagreen: const Color(0xFFe9fedf),
      nuvvuWhite: Colors.white,
      nuvvuGrey: const Color(0xff85959f),
      nuvvuChatbackground: const Color(0xffe8ded5),
      SplashBackgroundSolidColor: const Color(0xFF01826b),
      statusBarColor: const Color(0xFF01826b));
  final SwitchColors _messengerTheme = SwitchColors(
      nuvvuBlack: const Color(0xFF353f58),
      nuvvuBlue: const Color(0xFF3d9df5),
      nuvvuDeepGreen: const Color(0xFF296ac6),
      nuvvuLightGreen: const Color(0xFF036eff),
      nuvvugreen: const Color(0xFF06a2ff),
      nuvvuteagreen: const Color(0xFFeefcf8),
      nuvvuWhite: Colors.white,
      nuvvuGrey: Colors.grey,
      nuvvuChatbackground: const Color(0xffdde6ea),
      SplashBackgroundSolidColor: const Color(0xFFFFFFFF),
      statusBarColor: const Color(0xFF036eff));

  bool _isWhatsAppThemeEnabled = true;
  SwitchColors _theme =  SwitchColors(
      nuvvuBlack: const Color(0xFF1E1E1E),
      nuvvuBlue: const Color(0xFF02ac88),
      nuvvuDeepGreen: const Color(0xFF01826b),
      nuvvuLightGreen: const Color(0xFF02ac88),
      nuvvugreen: const Color(0xFF098b74),
      nuvvuteagreen: const Color(0xFFe9fedf),
      nuvvuWhite: Colors.white,
      nuvvuGrey: const Color(0xff85959f),
      nuvvuChatbackground: const Color(0xffe8ded5),
      SplashBackgroundSolidColor: const Color(0xFF01826b),
      statusBarColor: const Color(0xFF01826b));


  SwitchColors get theme => _theme;
  bool get isWhatsAppThemeEnabled => _isWhatsAppThemeEnabled;

  setToWhatsAppTheme(){
   _theme = _whatsAppTheme;
   _isWhatsAppThemeEnabled = true;
   notifyListeners();
  }
  setToMessengerTheme(){
    _theme = _messengerTheme;
    _isWhatsAppThemeEnabled = false;
    notifyListeners();
  }
}
