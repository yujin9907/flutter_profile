import 'package:flutter/material.dart';

import '../components/profile_buttons.dart';
import '../components/profile_count_info.dart';
import '../components/profile_drawer.dart';
import '../components/profile_header.dart';
import '../components/profile_tab.dart';

// 교재와 다르게 페이지 부분을 나눠서 함.

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: ProfileDrawer(),
        appBar: _buildProfileAppBar(),
        body: Column(
          children: [
            SizedBox(height: 20,),
            ProfileHeader(),
            SizedBox(height: 20,),
            ProfileCountInfo(),
            SizedBox(height: 20,),
            ProfileButtons(),
            Expanded(child: ProfileTab()),
          ],
        )
    );

  }

  // 위젯 앱바에 대해서 ; 뭐 어쩌라고.. 자동으로 뭐가 변하는 어쩌고 했음 뒤로가기 그런거
  AppBar _buildProfileAppBar(){
    return AppBar(
      // backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile", style: TextStyle(color: Colors.black),),
      centerTitle: true,
    );
  }
}