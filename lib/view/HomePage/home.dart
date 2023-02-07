import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/basehelper.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/custom_widgets.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/elevated_button.dart';
import 'package:flutter_pharmacy_mobile_app/controllers/authcontroller.dart';
import 'package:flutter_pharmacy_mobile_app/controllers/homePageController.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/sign_up.dart';
import 'package:flutter_pharmacy_mobile_app/view/Chat/chatview.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/homeView';
  final authController = Get.find<AuthController>();
  final controller = Get.find<HomePageController>();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          drawer: drawer(),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  header(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(ChatView.routeName);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  width: 0.7, color: AppColor.colorDarekGreey)),
                          child: const Text('Connect'),
                        ),
                      ),
                      Builder(builder: (context) {
                        return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(Icons.menu));
                      }),
                    ],
                  )
                ],
              ),
              // Container(
              //   margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              //   height: height * 0.5,
              //   decoration: const BoxDecoration(
              //       color: AppColor.colorwhite,
              //       boxShadow: [
              //         BoxShadow(
              //             color: AppColor.backgroundColorGrey, blurRadius: 5)
              //       ],
              //       image: DecorationImage(
              //           image: AssetImage(Images.homePageCard1),
              //           fit: BoxFit.cover)),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding:
              //             const EdgeInsets.only(left: 10, right: 60, top: 60),
              //         child: Text(
              //           "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat ",
              //           style: kNormal14BlackTextStyle,
              //         ),
              //       ),
              //       Padding(
              //         padding:
              //             const EdgeInsets.only(left: 10, right: 60, top: 40),
              //         child: Text(
              //           "Libera Professione Non Convenzionata",
              //           style: kHeadingBlackStyle,
              //         ),
              //       ),
              //       Padding(
              //           padding: const EdgeInsets.only(
              //               left: 10, right: 200, top: 60),
              //           child: CustomElevatedButton(
              //             backGroundColor: AppColor.colorOrange,
              //             onPressed: () {},
              //             child: Row(
              //               mainAxisSize: MainAxisSize.min,
              //               children: [
              //              Icon(Icons.play_arrow),
              //                Text('Playstore')
              //               ],
              //             ),
              //           ))
              //     ],
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: AppColor.colorwhite,
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: 350, child: Image.asset(Images.homePageCard2)),
                    Text(
                      "ENTRA NELLA COMMUNITY",
                      style: kHeadingBlackStyle,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Text(
                        "Nessuno di noi può farcela da solo, insieme invece possiamo fare tanto. Entra nella nostra community e rimani aggiornato sulle ultime notizie, aggiornamenti, convenzioni e servizi che la federazione promuove continuamente. ",
                        style: kNormal14BlackTextStyle,
                      ),
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 20),
                        child: CustomElevatedButton(
                            backGroundColor: AppColor.colorOrange,
                            onPressed: () {},
                            child: Text(
                              'MEDIA',
                              style: kButtonWhite18TextStyle,
                            ))),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 20),
                        child: CustomElevatedButton(
                            backGroundColor: AppColor.colorOrange,
                            onPressed: () {},
                            child: Text(
                              'AVENTI',
                              style: kButtonWhite18TextStyle,
                            ))),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 20),
                        child: CustomElevatedButton(
                            backGroundColor: AppColor.colorOrange,
                            onPressed: () {},
                            child: Text(
                              'ANNUNCI',
                              style: kButtonWhite18TextStyle,
                            )))
                  ],
                ),
              ),
              // Container(
              //     constraints: const BoxConstraints(),
              //     margin:
              //         const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              //     child: Column(
              //       children: [
              //         Text(
              //           'WHO WE ARE',
              //           style: kHeadingBlueStyle,
              //         ),
              //         homeStackCarWidget(height, width,
              //             text1: 'Why the Federation',
              //             text2:
              //                 'The Federation was born from the will of colleagues full of enthusiasm, passion and desire to',
              //             assetsName: Images.login),
              //         SizedBox(
              //           height: height * 0.2,
              //         ),
              //         homeStackCarWidget(height, width,
              //             text1: 'We are Pharmacists',
              //             text2:
              //                 "A simple concept, which shouldn't even need to be reiterated: we are pharmacists, graduates and qualified",
              //             assetsName: Images.signUpHeader2),
              //         SizedBox(
              //           height: height * 0.2,
              //         ),
              //         homeStackCarWidget(height, width,
              //             text1: 'United The Citizen wins',
              //             text2:
              //                 'Without protagonisms, with a spirit of sacrifice and always proactive and collaborative intentions, the Federation works',
              //             assetsName: Images.homePageCard3),
              //       ],
              //     )),
              // SizedBox(
              //   height: height * 0.25,
              // ),
              // Container(
              //   height: height * 0.5,
              //   color: AppColor.colorDarkBlue,
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         top: 90,
              //         left: 10,
              //         child: Text(
              //           'WHAT WE OFFER',
              //           style: kSubheading16BlackStyle.copyWith(
              //               color: AppColor.colorwhite),
              //         ),
              //       ),
              //       Positioned(
              //           top: 120,
              //           left: 15,
              //           child: Text(
              //             'STAY INFORMED',
              //             style: kHeadingWhiteStyle,
              //           )),
              //       Positioned.fill(
              //         top: 170,
              //         child: Container(
              //           decoration: const BoxDecoration(
              //               color: AppColor.colorBlue, shape: BoxShape.circle),
              //         ),
              //       ),
              //       Positioned.fill(
              //           top: 170, child: Image.asset(Images.homePageCard4))
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 90),
              //   color: AppColor.colorwhite,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       tapTextWidget(onTap: () {}, text1: 'Average'),
              //       SizedBox(
              //         height: height * 0.03,
              //       ),
              //       tapTextWidget(onTap: () {}, text1: 'Events'),
              //       SizedBox(
              //         height: height * 0.03,
              //       ),
              //       tapTextWidget(onTap: () {}, text1: 'ADS')
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 40),
              //   child: Text(
              //     "DOCTORS",
              //     style: kSubheading18BlackStyle.copyWith(
              //         color: AppColor.colorOrange),
              //   ),
              // ),
              // SizedBox(
              //   height: height * 0.015,
              // ),
              // Text(
              //   'OUR DOCTORS',
              //   style: kHeadingBlackStyle,
              // ),
              // SizedBox(
              //   height: height * 0.015,
              // ),
              // CarouselSlider(
              //     items: Images.homepageSlider
              //         .map((e) => Builder(
              //               builder: (context) {
              //                 return Column(
              //                   mainAxisSize: MainAxisSize.min,
              //                   children: [
              //                     Padding(
              //                       padding: const EdgeInsets.all(8.0),
              //                       child: Container(
              //                         child: Image(
              //                           image: AssetImage(e),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     const SizedBox(
              //                       height: 20,
              //                     ),
              //                     Container(
              //                       child: Text(
              //                         'Federico Mulazzani',
              //                         style: kSubheading18BlackStyle,
              //                       ),
              //                     ),
              //                     const SizedBox(
              //                       height: 8,
              //                     ),
              //                     Container(
              //                       child: Text(
              //                         'Design Expert ',
              //                         style: kNormal14GreyTextStyle.copyWith(
              //                             color: AppColor.colorDarekGreey),
              //                       ),
              //                     ),
              //                     const SizedBox(
              //                       height: 20,
              //                     ),
              //                     Container(
              //                       padding: const EdgeInsets.symmetric(
              //                           horizontal: 15),
              //                       height: 25,
              //                       width: width * 0.3,
              //                       decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(20),
              //                           border: Border.all(
              //                               color: AppColor.colorDarekGreey,
              //                               width: 0.5)),
              //                       child: Row(
              //                         children: [
              //                           Image.asset(Images.socialFacebookLogo,
              //                               height: 15),
              //                           SizedBox(
              //                             width: width * 0.01,
              //                           ),
              //                           Image.asset(
              //                             Images.socialTwitterLogo,
              //                             height: 25,
              //                           ),
              //                           SizedBox(
              //                             width: width * 0.01,
              //                           ),
              //                           Image.asset(
              //                             Images.socialGooglePlusLogo,
              //                             height: 25,
              //                           ),
              //                           SizedBox(
              //                             width: width * 0.01,
              //                           ),
              //                           Image.asset(
              //                             Images.socialInstagramLogo,
              //                             height: 15,
              //                           )
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 );
              //               },
              //             ))
              //         .toList(),
              //     options: CarouselOptions(height: 450, autoPlay: true)),
              // Container(
              //   height: 300,
              //   color: AppColor.colorDarkBlue,
              //   child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       children: [
              //         blueContainerBoxes(
              //           text1: '5,000',
              //           text2: 'PARHARMACIES IN ITALY',
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         blueContainerBoxes(
              //             text1: '19', text2: 'Years of Experience')
              //       ]),
              // )
            ],
          )),
    );
  }

  // Container blueContainerBoxes({required text1, required text2}) {
  //   return Container(
  //     height: 100,
  //     margin: const EdgeInsets.symmetric(horizontal: 20),
  //     padding: const EdgeInsets.only(left: 10),
  //     color: AppColor.colorLightBlue,
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           text1,
  //           style: kButtonWhite18TextStyle,
  //         ),
  //         Text(
  //           text2,
  //           style: kButtonWhite18TextStyle.copyWith(
  //               fontWeight: FontWeight.w400, fontSize: 16),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // tapTextWidget({required String text1, required VoidCallback onTap}) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 20),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           text1,
  //           style: kSubheading18BlackStyle,
  //         ),
  //         const SizedBox(
  //           height: 15,
  //         ),
  //         InkWell(
  //           onTap: onTap,
  //           child: Text(
  //             text1,
  //             style: kSubheading16BlackStyle.copyWith(
  //               color: AppColor.colorDarekGreey,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Stack homeStackCarWidget(double height, double width,
  //     {required String text1,
  //     required String text2,
  //     required String assetsName}) {
  //   return Stack(
  //     clipBehavior: Clip.none,
  //     children: [
  //       Container(
  //         child: Image(image: AssetImage(assetsName)),
  //       ),
  //       Positioned(
  //         bottom: -150,
  //         right: 20,
  //         left: 20,
  //         child: Container(
  //           padding: const EdgeInsets.symmetric(horizontal: 8),
  //           height: height * 0.25,
  //           decoration: const BoxDecoration(
  //             color: AppColor.colorwhite,
  //             boxShadow: [
  //               BoxShadow(color: AppColor.backgroundColorGrey, blurRadius: 5)
  //             ],
  //           ),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 text1,
  //                 style: kHeadingBlackStyle,
  //               ),
  //               Text(
  //                 text2,
  //                 style: kSubheading16BlackStyle,
  //               ),
  //               Container(
  //                 margin: const EdgeInsets.symmetric(horizontal: 20),
  //                 child: CustomElevatedButton(
  //                   side: const BorderSide(color: AppColor.colorblack),
  //                   backGroundColor: AppColor.colorwhite,
  //                   onPressed: () {},
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       Text(
  //                         'Read More',
  //                         style: kSubheading18BlackStyle.copyWith(
  //                             fontWeight: FontWeight.bold),
  //                       ),
  //                       SizedBox(
  //                         width: width * 0.001,
  //                       ),
  //                       const Icon(
  //                         Icons.arrow_forward_rounded,
  //                         size: 20,
  //                         color: AppColor.colorblack,
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }

  drawer() {
    return SizedBox(
      width: 280,
      child: Drawer(
        backgroundColor: AppColor.colorwhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: header(),
            ),
            dividerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed(HomeView.routeName);
                },
                child: Text(
                  'Home',
                  style: kSubheading16BlackStyle,
                ),
              ),
            ),
            dividerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed(HomeView.routeName);
                },
                child: Text(
                  'About Us',
                  style: kSubheading16BlackStyle,
                ),
              ),
            ),
            dividerWidget(),
            ExpansionTile(
              expandedAlignment: Alignment.centerLeft,
              childrenPadding: const EdgeInsets.only(left: 22),
              title: Text(
                'Partner-Convenzioni',
                style: kSubheading16BlackStyle,
              ),
              children: [
                Text(
                  'Portfolio',
                  style: kSubheading16BlackStyle,
                )
              ],
            ),
            dividerWidget(),
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              expandedAlignment: Alignment.centerLeft,
              title: Text(
                'News',
                style: kSubheading16BlackStyle,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 15),
                  child: Text(
                    'Media',
                    style: kSubheading16BlackStyle,
                  ),
                ),
                dividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 10, top: 10),
                  child: Text(
                    'Eventi',
                    style: kSubheading16BlackStyle,
                  ),
                ),
                dividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 10, top: 10),
                  child: Text(
                    'Anunchi',
                    style: kSubheading16BlackStyle,
                  ),
                ),
                dividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 10, top: 10),
                  child: Text(
                    'Communicati',
                    style: kSubheading16BlackStyle,
                  ),
                )
              ],
            ),
            dividerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed(HomeView.routeName);
                },
                child: Text(
                  'Contatti',
                  style: kSubheading16BlackStyle,
                ),
              ),
            ),
            dividerWidget(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: InkWell(
                onTap: () async {
                  await authController.logOut();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'LOGOUT',
                      style: kSubheading16BlackStyle,
                    ),
                    const Icon(
                      Icons.logout,
                      color: AppColor.colorDarekGreey,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Divider dividerWidget() {
    return const Divider(
      color: AppColor.backgroundColorGrey,
      height: 0,
      thickness: 0.8,
    );
  }
}
