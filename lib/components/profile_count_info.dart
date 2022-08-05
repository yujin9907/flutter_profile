import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo(),
        _buildLine(),
        _buildInfo(),
        _buildLine(),
      ],
    );
  }

  _buildInfo() {
    return SizedBox();
  }

  _buildLine() {
    return SizedBox();
  }
}
