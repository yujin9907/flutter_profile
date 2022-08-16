import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  _buildInfo(String c, String t) {
    return Column(
      children: [
        Text(c, style: TextStyle(fontSize: 15),),
        SizedBox(height: 2,),
        Text(t)
      ],
    );
  }

  _buildLine() {
    return Container(
        width: 2,
        height: 60,
        color: Colors.blue,
    );
  }
}
