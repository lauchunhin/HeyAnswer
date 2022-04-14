import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "bg-3.png",
    "welcome-two.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite, // max height and width
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/" + images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Future", color: Colors.white,),
                        AppText(text: "Knowledge", size: 30, color: Colors.white,),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: "HeyAnswer helps you build knowledge in different areas you would like to explore.",
                            color: Colors.white.withOpacity(0.85),
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 40,),
                        Container(
                            width: 200,
                              child: Row(children:[ ResponsiveButton(width: 120,)])),
                        ]),
                    Column(
                      children: List.generate(2, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?Colors.white:Colors.white.withOpacity(0.3)
                          ),
                        );
                      }),
                    )
                  ]
                )
              )
            );
          }
      )
    );
  }
}

