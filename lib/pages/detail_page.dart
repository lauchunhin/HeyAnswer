import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenLikes = 43;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/post1.png"),
                        fit: BoxFit.cover
                    ),

                  ),
                )),
            Positioned(
              left: 20,
                top: 50,
                child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                color: Colors.white,
                )
              ],
            )),
            Positioned(
              top: 300,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32)
                    )
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: AppLargeText(text: "Top 10 Digital Illustration Tools", color: Colors.black.withOpacity(0.8)),
                          ),
                          AppLargeText(text: "7 mins", color: Colors.black.withOpacity(0.8), size: 20,)
                        ],
                      ), // Topic
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index){
                              return Icon(Icons.thumb_up, color: index < gottenLikes~/10?AppColors.starColor:AppColors.textColor1);
                            }),
                          ),
                          SizedBox(width: 10,),
                          AppText(text: "43", color: AppColors.textColor2,),
                        ],
                      ), //likes
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          AppLargeText(text: "Description", color: Colors.black.withOpacity(0.8), size: 20,),
                        ],
                      ), // Description
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: AppText(text: "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...", color: Colors.black45,),
                          ),
                        ],
                      ), // Real description
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.mode_edit, color: Colors.cyan, size: 20,),
                          SizedBox(width: 5,),
                          AppText(text: "10", color: Colors.cyan,),
                          SizedBox(width: 20,),
                          Icon(Icons.comment, color: Colors.black26, size: 20,),
                          SizedBox(width: 5,),
                          AppText(text: "32", color: Colors.black26,),
                          SizedBox(width: 20,),
                          Icon(Icons.remove_red_eye, color: Colors.black26,size: 20,),
                          SizedBox(width: 5,),
                          AppText(text: "98", color: Colors.black26,),
                        ],
                      ), // 3 icons
                      SizedBox(height: 5,),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      Row(
                        children: [
                          AppLargeText(text: "Comments", color: Colors.cyan, size: 20,),
                        ],
                      ), // Comments
                      SizedBox(height: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AppLargeText(text: "Jorge Watson", size: 16,),
                          SizedBox(height: 5,),
                          AppText(text: "2 hours ago", size: 12,),
                          SizedBox(height: 10,),
                          AppText(text: "Adobe Illustrator is too complicated to use ~", size: 16, color: Colors.black.withOpacity(0.8),),
                          SizedBox(height: 10,),
                          AppText(text: "Reply", size: 12, color: Colors.blue,)
                        ],
                      ),
                    ],
                  ),
            )),
            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
            ),)
          ],
        ),
      ),
    );
  }
}
