import 'package:flutter/material.dart';

//컨스트, 한번만 실행함
const MaterialColor primaryWhite = MaterialColor( // 객체 생성
    0xFFFFFF, {50: Color(0xFFFFFF),
    100: Color(0xFFFFFF),
    200: Color(0xFFFFFF),
    300: Color(0xFFFFFF),
    400: Color(0xFFFFFF),
    500: Color(0xFFFFFF),
    600: Color(0xFFFFFF),
    700: Color(0xFFFFFF),
    800: Color(0xFFFFFF),
    900: Color(0xFFFFFF),
}); // 색갈창 옆에 네모 클릭하면 팔레트 나옴

ThemeData theme() {
  return ThemeData(
    //primaryColor: Colors.white, // 브랜드의 아이덴티티 색상, 기본값은 블루, accent 컬러는 어디있는지?
    primarySwatch: MaterialColor(), // 왜 이걸로 하는 거임?
      appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
  )
  );
}