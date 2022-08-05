import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity, // 해당 위젯이 가질 수 있는 최대 범위
      color: Colors.blue,
    );
  }
}
