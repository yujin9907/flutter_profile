import 'package:flutter/cupertino.dart';

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

  _buildHeaderAvatar() {
    return SizedBox();
  }

  _buildHeaderProfile() {
    return SizedBox();
  }
}
