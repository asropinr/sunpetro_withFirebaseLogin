import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sunpetro2/constant/r.dart';
import 'package:sunpetro2/screen/auth/loginScreen.dart';
import 'package:sunpetro2/screen/hitungProduksi.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  ScrollController? _controller;
  List card = [
    {
      "icon": R.icons.icAritma,
      "title": R.strings.titleHitungProduksi,
      "desc": R.strings.descHitungProduksi,
      "screen": HitungProduksiScreen(),
    },
    {
      "icon": R.icons.icRiwayat,
      "title": R.strings.titleRiwayat,
      "desc": R.strings.descRiwayat,
      "screen": HitungProduksiScreen()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              right: -30.w,
              child: Container(
                //padding: EdgeInsets.only(left: AdaptiveSize.width(110)),
                child: Image(
                  image: AssetImage(R.icons.icbgHome),
                  height: 249.h,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.only(bottom: 0),
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 55.h, horizontal: 34.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                await GoogleSignIn().signOut();
                                await FirebaseAuth.instance.signOut();
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (_) {
                                  return LoginScreen();
                                }));
                              },
                              child: Image(
                                image: AssetImage(R.icons.icClose),
                              ),
                            ),
                            Image(
                              image: AssetImage(R.icons.icSunpetro),
                            ),
                            Image(
                              image: AssetImage(R.icons.icMore),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        //() => _showDialogVariabel(),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 41.h, right: 137.w, left: 25.w),
                              height: 135.h,
                              width: 310.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF9FB3D0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.w),
                                  topRight: Radius.circular(20.w),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    R.strings.titleVariabel,
                                    style: R.fonts.monserat.copyWith(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    R.strings.descVariabel,
                                    style: R.fonts.playfair.copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: -5,
                              right: 20.w,
                              child: Image(
                                image: AssetImage(R.icons.icBgData),
                                height: 92.h,
                              ),
                            ),
                            Positioned(
                              height: 7.h,
                              width: MediaQuery.of(context).size.width,
                              bottom: 0,
                              child: Container(
                                color: Color(0xFF52799A),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 32.w, right: 32.w, top: 38.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              R.strings.titlePerhitungan,
                              style: R.fonts.playfair.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0XFF52799A),
                                  ),
                                ),
                                SizedBox(
                                  width: 9.w,
                                ),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0XFFC4C4C4),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 300.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: card.length,
                          controller: _controller,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              card[index]["screen"]),
                                    ),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: index == 0 ? 32.w : 15.w,
                                              right: index == card.length - 1
                                                  ? 32.w
                                                  : 0),
                                          padding: EdgeInsets.only(
                                            right: 23.w,
                                            top: 51.h,
                                          ),
                                          width: 200.w,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF9FB3D0),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20.w),
                                              topRight: Radius.circular(20.w),
                                              bottomRight:
                                                  Radius.circular(20.w),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    card[index]["icon"]),
                                                height: 92.h,
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                card[index]["title"],
                                                style:
                                                    R.fonts.monserat.copyWith(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 60.w),
                                                child: Text(
                                                  card[index]["desc"],
                                                  style:
                                                      R.fonts.playfair.copyWith(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ),
                                                  textAlign: TextAlign.end,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: index != 0 ? 15.w : 32.w),
                                            height: 67.h,
                                            width: 67.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF52799A),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                  20.w,
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Image(
                                                image:
                                                    AssetImage(R.icons.icArrow),
                                                height: 19.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        height: 60.h,
                        width: 200.w,
                        margin: EdgeInsets.only(left: 120.w),
                        padding: EdgeInsets.symmetric(
                            vertical: 20.h, horizontal: 23.w),
                        decoration: BoxDecoration(
                          color: Color(0xFF52799A),
                          borderRadius: BorderRadius.circular(
                            30.w,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(R.icons.icCetakLaporan),
                              height: 61.h,
                            ),
                            Text(
                              R.strings.cetakLaporan,
                              style: R.fonts.monserat.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                //padding: EdgeInsets.only(left: AdaptiveSize.width(220)),
                child: Image(
                  image: AssetImage(R.icons.icbgHome2),
                  height: 225.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
