// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_pharmacy_mobile_app/controllers/homePageController.dart';
// import 'package:get/get.dart';

// import '../../utilis/constants/appimages.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class HomePage extends StatelessWidget {
//   static const routeName = '/HomePage';
//   final controller = Get.put(HomePageController());
//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     // print(controller.alignAnimation.value);
//     //   print(controller.animation.value);
//     //    print(controller.animationController);
//     return SafeArea(
//       child: Scaffold(
//         body: ListView(
//           padding: EdgeInsets.only(bottom: 100),
//           children: [
//             Obx(
//               () => AnimatedContainer(
//                   height: 37,
//                   duration: Duration(milliseconds: 200),
//                   // onEnd: () {
//                   //   controller.index.value++;
//                   //   controller.leftColor.value = controller
//                   //       .color.value[controller.index.value % controller.color.length];
//                   //   controller.rightColor.value = controller
//                   //       .color.value[(controller.index.value+1) % controller.color.length];
//                   // },

//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: controller.begin,
//                           end: controller.end,
//                           colors: [
//                         controller.leftColor.value,
//                         controller.rightColor.value
//                       ])),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Icon(Icons.email_outlined),
//                               Text('abcd@gmail.com')
//                             ],
//                           )),
//                       SizedBox(
//                         width: 2,
//                       ),
//                       TextButton(
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Icon(Icons.email_outlined),
//                               Text('abcd@gmail.com')
//                             ],
//                           )),
//                     ],
//                   )),
//             ),
//             ExpansionTile(
//               trailing: Icon(Icons.menu),
//               title: Container(),
//               leading: Container(
//                 width: 150,
//                 height: 30,
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(Images.signUpHeader),
//                         fit: BoxFit.cover)),
//               ),
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextButton(
//                         onPressed: () {},
//                         child: Text('Media& press release')),
//                     TextButton(
//                         onPressed: () {},
//                         child: Text('Partner & conventions')),
//                     ExpansionTile(
//                       tilePadding:
//                           EdgeInsets.symmetric(horizontal: 7, vertical: 0),
//                       controlAffinity: ListTileControlAffinity.trailing,
//                       title: Container(),
//                       leading: Container(
//                           width: 110,
//                           height: 25,
//                           alignment: Alignment.centerLeft,
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               Text(
//                                 'Services',
//                                 style: TextStyle(fontSize: 17),
//                               ),
//                               Icon(
//                                 Icons.arrow_drop_down_sharp,
//                                 size: 28,
//                               ),
//                             ],
//                           )),
//                       trailing: SizedBox(
//                         height: 2,
//                         width: 2,
//                       ),
//                       childrenPadding: EdgeInsets.zero,
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               TextButton(
//                                   onPressed: () {}, child: Text('Events')),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text('classifieds')),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text('FAQ/insights')),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                     TextButton(
//                         onPressed: () {}, child: Text('Organizaton chart')),
//                     TextButton(onPressed: () {}, child: Text('Contact')),
//                     TextButton(onPressed: () {}, child: Text('subscribe')),
//                   ],
//                 )
//               ],
//             ),
//             Container(
//               height: height * 0.25,
//               width: width,
//               margin: EdgeInsets.only(left: 10, right: 10,top: 10),
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                       Images.homepageCard1,
//                     ),
//                     fit: BoxFit.cover),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 8,
//                   )
//                 ],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                       margin: EdgeInsets.only(left: 15, right: 80, ),
//                       child: Text(
//                         'Non-affiliated freelance profession',
//                         style: TextStyle(fontSize: 20),
//                       )),
//                   Container(
//                       margin: EdgeInsets.only(left: 15, right: 40, ),
//                       child: Text(
//                         'The Federation was born from the will of colleagues full of enthusiasm, passion and desire to fight in the interest of the citizen against a system that creates a distorted image of Serie A and Serie B Pharmacists.',
//                         style: TextStyle(fontSize: 13),
//                       )),
//                   Container(
//                       margin: EdgeInsets.only(left: 15, ),
//                       child: ElevatedButtonWidget(onPressed: () {  }, child: Text('sign up now'),)),
//                 ],
//               ),
//             ),
//              Container(
//               height: height * 0.35,
//               width: width,
//               margin: EdgeInsets.only(left: 10, right: 10,top: 20),
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                       Images.homepageCard2,
//                     ),
//                     fit: BoxFit.cover),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 8,
//                   )
//                 ],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                       margin: EdgeInsets.only(left: 15, right: 80, ),
//                       child: Text(
//                         'Why Join',
//                         style: TextStyle(fontSize: 20,color: Colors.white),
//                       )),
//                   Container(
//                       margin: EdgeInsets.only(left: 15, right: 40, ),
//                       child: Text(
//                         'Standing by and watching the dust rise in the arena from a distance while our professional fellow soldiers fight for us all does no credit to the courage that everyone had to draw on to embark on this professional and entrepreneurial adventure. None of us can do it alone, but together we can do so much. If we add to this the advantages of information, updates, services and conventions that the federation continuously implements, the question becomes: why NOT register?',


//                         style: TextStyle(fontSize: 13,color: Colors.white),
//                       )),
//                   Container(
//                       margin: EdgeInsets.only(left: 15, ),
//                       child: TextButton(
//                         style: TextButton.styleFrom(
//                           side: BorderSide(color: Colors.white)
//                         ),
//                         onPressed: (){}, child: Text('sign up now',style: TextStyle(color: Colors.white),))),

//                 ],
//               ),
//             ),
            
//                         Container(
//                            height: height * 0.35,
//               width: width,
//               margin: EdgeInsets.only(left: 10, right: 10,top: 20),
//                   decoration: BoxDecoration(
             
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 8,
//                   )
//                 ],
//                 color: Color(0xff36439e),
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                         Container(
//                       margin: EdgeInsets.only(left: 15, right: 80, ),
//                       child: Text(
//                         'IN NUMBERS',
//                         style: TextStyle(fontSize: 20,color: Colors.white),
//                       )),
//                       Container(
//                         margin: EdgeInsets.only(left: 10, right: 80, ),
//                         child: Row(children: [
//                           Icon(Icons.home,color: Colors.white,size: 40,),
//                           Text('5000',style: TextStyle(fontSize: 19,color: Colors.white),)
//                         ],),
//                       ),
//                          Container(
//                       margin: EdgeInsets.only(left: 15, right: 80, ),
//                       child: Text(
//                         'PHARMACIES IN ITALY',
//                         style: TextStyle(fontSize: 16,color: Colors.white),
//                       )),
// Divider(height: 5,thickness: 0.3,color: Colors.white,indent: 20,endIndent: 20,),
//    Container(
//                         margin: EdgeInsets.only(left: 10, right: 80,),
//                         child: Row(children: [
//                           Icon(Icons.trending_up,color: Colors.white,size: 40,),
//                           Text('+19%',style: TextStyle(fontSize: 19,color: Colors.white),)
//                         ],),
//                       ),
//                          Container(
//                       margin: EdgeInsets.only(left: 15, right: 80, ),
//                       child: Text(
//                         'IN THE LAST 5 YEARS',
//                         style: TextStyle(fontSize: 16,color: Colors.white),
//                       )),
//                 ],
//               ),
              
//                         ),
//                         Container(
//                                height: height * 0.35,
//               width: width,
//               margin: EdgeInsets.only(left: 10, right: 10,top: 20),
//                   decoration: BoxDecoration(
             
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 8,
//                   )
//                 ],
//                 color: Color(0xffbe5b2d),
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Column(
//                 children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right:20, ),
//                       child: Text(
//                         'Partners & Conventions - discounts for new openings',
//                         style: TextStyle(fontSize: 20,color: Colors.white),
//                         textAlign: TextAlign.center,
//                       )),
//                         Container(
//                       margin: EdgeInsets.only(left: 30, right: 20, ),
//                       child: Text(
//                         'FNPI is always at the side of innovative services and new businesses. Discover them all here »',
//                         style: TextStyle(fontSize: 16,color: Colors.white),
//                       )),
//                   CarouselSlider(
//   options: CarouselOptions(height: 150.0,autoPlay: true,autoPlayCurve: Curves.easeIn,enlargeCenterPage: true,),
//   items: Images.homepageSlider.map((i) {
//     return Builder(
//       builder: (BuildContext context) {
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           margin: EdgeInsets.symmetric(horizontal: 5.0),
//           decoration: BoxDecoration(
//             color: Colors.amber,
//            image: DecorationImage(image: AssetImage(i),fit: BoxFit.fill)
//           ),
    
//         );
//       },
//     );
//   }).toList(),
// )
//                 ],
//               ),
//                         ),
//                             Container(
//                                height: height * 2,
//               width: width,
//               margin: EdgeInsets.only(left: 10, right: 10,top: 20),
//                   decoration: BoxDecoration(
             
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 8,
//                   )
//                 ],
//                 color:Colors.white,
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
                 
//                   Image(image: AssetImage(Images.login)),
//                      Container(
//                       margin: EdgeInsets.only(left: 10, right:20, ),
//                       child: Text(
//                         'Why the Federation',
//                         style: TextStyle(fontSize: 20,color: Color(0xffbe5b2d),),
//                         textAlign: TextAlign.center,
//                       )),
//                         Container(
//                       margin: EdgeInsets.only(left: 10, right: 20, ),
//                       child: Text(
//                         'The Federation was born from the will of colleagues full of enthusiasm, passion and desire to fight in the interest of the citizen against a system that creates a distorted image of Serie A and Serie B Pharmacists.',
//                         style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.6)),
//                       )),
//                       Container(
//                                 margin: EdgeInsets.only(left: 10, right:20, ),
//                         child: ElevatedButtonWidget(onPressed: (){}, child: Text('Read everything')))
//                 ],
//               ),
//                         )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ElevatedButtonWidget extends StatelessWidget {
//   const ElevatedButtonWidget({
//     Key? key, this.bckColor, required this.onPressed, required this.child,
//   }) : super(key: key);
//   final Color? bckColor;
//   final VoidCallback onPressed;
//   final Widget child;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: onPressed,
//         child: child,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: bckColor ?? Color(0xffEA7227),
//         ));
//   }
// }
