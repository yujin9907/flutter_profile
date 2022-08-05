import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white, // 브랜드의 아이덴티티 색상, 기본값은 블루, accent 컬러는 어디있는지?
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
  )
  );
}