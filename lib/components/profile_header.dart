import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        _buildHeaderAvatar(),
        SizedBox(width: 20,),
        _buildHeaderProfile(),
      ],
    );
  }

  // 프로필 얼굴 사진
  // 이미지클래스.에셋을 안 쓰는 이유?
  // 귀찮게 이미지 속성을 막 어쩌고저쩌고 디자인하지 말고
  // 서클아바타 위젯을 이용해서 한번에 해결 -> 그래서 서클의 속성으로 이미지를 준 거임.
  _buildHeaderAvatar() {
    return SizedBox( // 어떤 위젯이 크기를 조절하는 속성이 없으면 사이즈 박스를 사용해서 조절하면 됨
      height: 100,
      width: 100,
      child: CircleAvatar(
        // maxRadius: 30, // 크기 조절하는 거?
        // 다만 플러터는 크기를 설정하는 위젯이 없는 경우가 많아서 이거 배워두기
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GetinThere",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "프로그래머/작가/강사",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "데어 프로그래밍",
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
