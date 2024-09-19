import 'package:flutter/material.dart';
import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/model/splash_data.dart';
import 'package:ecommercee/screens/splash/components/splash_content.dart';
import 'package:ecommercee/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                    // print(currentPage);
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      text: splashData[index]["text"]!, //string nullable
                      image: splashData[index]["image"]!)),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => dotBuilder(index: index))),
                    const Spacer(
                      flex: 3,
                    ),
                    MyDefaultButton(
                      text: 'Next',
                      onPressed: () => Navigator.pushNamed(context, '/sign_in'),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotBuilder({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : const Color(0xffd8d8d8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
