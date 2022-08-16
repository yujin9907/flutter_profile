import 'package:flutter/material.dart';

// stf 자동완성

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.directions_car),
        ),
        Tab(
          icon: Icon(Icons.directions_transit),
        )
      ],
    );
  }

  // 게시물 사진들을 정렬해주는 위젯 가로 세로에 데이터를 넣고
  // spacing에 간격주고, 그 외 그리드뷰 클릭해서 무슨 속성이 있는지 확인
  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      GridView.builder(
        // 이 그리드딜리게이트를 통한 많은 설명 참고하고 이해하기, 다시 아웃풋 정리
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
        ),
        // 이게 익명함수 사용예시 itemBuilder (){} 꼴
        // 익명함수에선, 타입을 생략할 수 있음 // 다른 곳에선 안 됨.
        itemBuilder: (context, index){
          return Image.network(
            "https://picsum.photos/id/${index +1}/200/200"
          );
        },
        // 이건 선택적 매개변수
        itemCount: 42,
      ),
      Container(color: Colors.red,),
    ]);
  }
}
