import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunpetro2/constant/R/colors.dart';
import 'package:sunpetro2/constant/r.dart';
import 'package:sunpetro2/screen/homepageScreen.dart';

class HitungProduksiScreen extends StatefulWidget {
  HitungProduksiScreen({Key? key}) : super(key: key);

  @override
  State<HitungProduksiScreen> createState() => _HitungProduksiScreenState();
}

class _HitungProduksiScreenState extends State<HitungProduksiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
              Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 55.h, horizontal: 34.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) {
                              return HomePageScreen();
                            }));
                          },
                          child: Image(
                            image: AssetImage(R.icons.icBackArrow),
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
                  Stack(
                    children: [
                      Container(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 13.w, top: 14.h),
                              child: Text(
                                R.strings.titleHP,
                                style: R.fonts.monserat.copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(right: 10.w, top: 4.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          R.strings.subtitleHP,
                                          style: R.fonts.playfair.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          R.strings.ket1,
                                          style: R.fonts.playfair.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          R.strings.ket2,
                                          style: R.fonts.playfair.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          R.strings.ket3,
                                          style: R.fonts.playfair.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 12.h),
                                    child: Image(
                                      image: AssetImage(R.icons.icWarningHP),
                                      height: 70,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
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
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.h, horizontal: 34.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              R.strings.lblPermintaan,
                              style: R.fonts.monserat.copyWith(
                                fontSize: 14,
                                color: Appcolors.fontColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 5.h),
                              height: 40.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Appcolors.bgSplash,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: R.strings.hintTextPermintaan,
                                    hintStyle: R.fonts.monserat.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Appcolors.hintTextColor)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              R.strings.lblPersediaan,
                              style: R.fonts.monserat.copyWith(
                                fontSize: 14,
                                color: Appcolors.fontColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 5.h),
                              height: 40.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Appcolors.bgSplash,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: R.strings.hintTextPersediaan,
                                    hintStyle: R.fonts.monserat.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Appcolors.hintTextColor)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              R.strings.lblTenagaKerja,
                              style: R.fonts.monserat.copyWith(
                                fontSize: 14,
                                color: Appcolors.fontColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 5.h),
                              height: 40.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  color: Appcolors.bgSplash,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: R.strings.hintTextTenagaKerja,
                                    hintStyle: R.fonts.monserat.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Appcolors.hintTextColor)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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
    );
  }
}
