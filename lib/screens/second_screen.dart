import 'package:flutter/material.dart';
import 'package:flutter_realestate_ui/screens/third_screen.dart';
import 'package:flutter_realestate_ui/tools/border.dart';
import 'package:flutter_realestate_ui/tools/colors.dart';

import '../tools/text_style.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    String desc =
        'Real estate is private property in the form of buildings and land. Real estate can be used for residential, commercial, or industrial purposes, and includes any resources on the land such as water or minerals';
    return Container(
      color: greyColor,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.03,
                vertical: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: searchBarColor,
                          blurRadius: 15,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ThirdScreen(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: getBorderRadiusWidget(context, 0.08),
                            child: Hero(
                              tag: 'pic',
                              child: Image.asset(
                                'pic1.jpg',
                                width: width,
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: width,
                          margin: EdgeInsets.symmetric(
                              horizontal: width * 0.04, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(width * 0.03),
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius:
                                        getBorderRadiusWidget(context, 0.03),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: backGroundColor,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(width * 0.03),
                                decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius:
                                      getBorderRadiusWidget(context, 0.03),
                                ),
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  color: backGroundColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: width * 0.95,
                            height: 120,
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  primaryColor,
                                ],
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter,
                              ),
                              borderRadius:
                                  getBorderRadiusWidget(context, 0.08),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Kanalaya\'s Eyrie',
                                      style: textColor5,
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.location_on_sharp,
                                          color: backGroundColor,
                                          size: 26,
                                        ),
                                        Text(
                                          'Pang Masha,Thailand',
                                          style: textColor8,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      '\$100/',
                                      style: textColor6,
                                    ),
                                    Text(
                                      'Night',
                                      style: textColor8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Description',
                    style: textColor2,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    desc,
                    style: textColor11,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Facilities',
                    style: textColor2,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04, vertical: 6),
                        decoration: BoxDecoration(
                          color: searchBarColor,
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.bed,
                              color: greyColor,
                              size: 28,
                            ),
                            SizedBox(width: width * 0.03),
                            const Text(
                              '1',
                              style: textColor9,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04, vertical: 6),
                        decoration: BoxDecoration(
                          color: searchBarColor,
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.wifi,
                              color: greyColor,
                              size: 28,
                            ),
                            SizedBox(width: width * 0.03),
                            const Text(
                              'Wifi',
                              style: textColor9,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04, vertical: 6),
                        decoration: BoxDecoration(
                          color: searchBarColor,
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.tv,
                              color: greyColor,
                              size: 28,
                            ),
                            SizedBox(width: width * 0.03),
                            const Text(
                              'Tv',
                              style: textColor9,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
