import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: getPropScreenWidth(115),
        height: getPropScreenWidth(115),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/Carti.jpeg"),
            ),
            Positioned(
                bottom: 0,
                right: -16,
                child: Container(
                  height: getPropScreenWidth(46),
                  width: getPropScreenWidth(46),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF5F6F9),
                    border: Border.all(color: Colors.white),
                  ),
                  child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                ))
          ],
        ),
      ),
    );
  }
}
