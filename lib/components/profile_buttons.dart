import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  // 컨테이너를 디자인 후 그걸 인크웰로 감싼 구조
  _buildFollowButton() {
    // return OutlinedButton(onPressed: onPressed, child: child); 이렇게 쉽게 할 수 있음
    // 직접 만드는 방법으로 해 볼 것
    return InkWell(
      onTap:(){
        print("Follow 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 56,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(

        ),
      )
    );
  }

  _buildMessageButton() {
    return InkWell(
      onTap: () {
        print("Message Button");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Message",
          style: TextStyle(color: Colors.blue),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
      ),
    );
  }
}
