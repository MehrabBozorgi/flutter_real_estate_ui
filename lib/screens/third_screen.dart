import 'package:flutter/material.dart';
import 'package:flutter_realestate_ui/tools/border.dart';

import '../tools/colors.dart';
import '../tools/text_style.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'pic',
            child: Image.asset(
              'pic1.jpg',
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              padding: EdgeInsets.all(width * 0.03),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: getBorderRadiusWidget(context, 0.03),
              ),
              child: const Icon(
                Icons.more_vert,
                color: backGroundColor,
              ),
            ),
          ),
          Positioned(
            bottom: 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Detail Preview',
                    style: textColor5,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor,
                              offset: Offset(5, 5),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.05),
                          child: Image.asset(
                            'pic2.jpg',
                            width: width * 0.28,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor,
                              offset: Offset(5, 5),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.05),
                          child: Image.asset(
                            'pic3.jpg',
                            width: width * 0.28,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor,
                              offset: Offset(5, 5),
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.05),
                          child: Image.asset(
                            'pic4.jpg',
                            width: width * 0.28,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
