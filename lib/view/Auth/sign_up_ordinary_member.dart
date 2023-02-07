// import 'package:flutter/material.dart';
// import 'package:flutter_pharmacy_mobile_app/Helper/Widget/text_form_field.dart';

// import 'package:flutter_pharmacy_mobile_app/controllers/authcontroller.dart';
// import 'package:flutter_pharmacy_mobile_app/controllers/homePageController.dart';
// import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
// import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
// import 'package:flutter_pharmacy_mobile_app/view/HomePage/homepage.dart';
// import 'package:get/get.dart';

// class SignUpOrdinaryMember extends StatelessWidget {
//   static const routeName = '/SignUPORrdinaryMember';
//   final authcontroller = Get.find<AuthController>();

//   SignUpOrdinaryMember({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: Scaffold(
//           body: ListView(children: [
//         Container(
//           height: 80,
//           width: width,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//             image: AssetImage(Images.signUpHeader),
//           )),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           height: 100,
//           width: width,
//           alignment: Alignment.center,
//           color: Color(0xff262F36),
//           child: Text(
//             'REGISTRATION OF ORDINARY MEMBERS',
//             style: TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
//           ),
//         ),
//         Divider(
//           height: 0,
//           color: Color(0xffE7492B),
//           thickness: 5,
//         ),
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'This is the registration page for the Italian National Parapharmacy Federation Portal.The following form must be completed in its entirety in order to enter all the data necessary to complete the registration. Once you accept the conditions, please proceed with the bank transfer in order to definitively conclude the registration procedure.The bank transfer must be sent to',
//                 style: TextStyle(fontSize: 17),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Text(
//                 'National Federation of Italian Parapharmacies',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(
//                   """   iban: IT87O0706216200000000003160\nReason: registration ...... 
//     NAME OF PARAPHARMACY OR PHARMACIST""")
//             ],
//           ),
//         ),
//         Container(
//             // height: 200,
//             // width: 100,
//             child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 20,
//                 margin: EdgeInsets.only(left: 65),
//                 child: Text(
//                   'The undersigned',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'FIRST NAME *',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'LAST NAME *',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'CITY OF BIRTH',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'DATE OF BIRTH',
//                 hintText: 'mm/dd/yyyy',
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Container(
//                 height: 20,
//                 margin: EdgeInsets.only(left: 65),
//                 child: Text(
//                   'in his Capacity as Owner or Legal Representative of the  ',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'PARAPHARMACY',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'SITE IN*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'POSTAL CODE*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'PROVINCE*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'PLAZZA WAY*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'VAT NUMBER/Tax Code*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'UNIQUE CODE*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               // RowTextAndField(
//               //   width: width,
//               //   authcontroller: authcontroller,
//               //   fieldName: 'TELEPHONE*',
//               // ),
//               SizedBox(
//                 height: 10,
//               ),
//               // RowTextAndField(
//               //   width: width,
//               //   authcontroller: authcontroller,
//               //   fieldName: 'CELL PHONE*',
//               // ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'FAX*',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'EMAIL*',
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 5),
//                 child: Text(
//                   'If you are also interested in being part of the Vifarm Purchasing Group, to obtain more competitive price lists, indicate YES and you will be contacted as soon as possible. ',
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RowTextAndField(
//                 width: width,
//                 authcontroller: authcontroller,
//                 fieldName: 'VIFRAM MEMBERSHIP *',
//                 dropDownField: authcontroller.dropDown.value = true,
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 height: 140,
//                 decoration: BoxDecoration(border: Border.all(width: 2)),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       color: Color(0xffEEEEEE),
//                       padding: EdgeInsets.only(left: 20),
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         'Payment data',
//                         style: TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Flexible(
//                             child: Container(
//                               child: Text('QUOTE'),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Container(
//                               height: 30,
//                               child: CustomTextFormField(
//                                 filledColor: Color(0xffEEEEEE),
//                                 hinttext: '100',
//                                 controller: authcontroller.nameController,
//                                 prefixIcon: Container(
//                                   padding: EdgeInsets.only(left: 5),
//                                   decoration: BoxDecoration(
//                                       border: Border(
//                                           right:
//                                               BorderSide(color: Colors.grey))),
//                                   width: 30,
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     'ddd',
//                                     style: TextStyle(color: Colors.black),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 50,
//                 margin: EdgeInsets.only(left: 5),
//                 child: Text(
//                   'In order to complete the procedure, we remind you to proceed with the transfer of the all-inclusive sum of  € 100.00  , to be sent to:',
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ),
//               Container(
//                 height: 50,
//                 margin: EdgeInsets.only(left: 5),
//                 child: Text(
//                   '''Bank for the development of credit cooperation
//     IBAN:  IT87O0706216200000000003160
//     Reason: Registration... "NAME OF PARAPHARMACY OR PHARMACIST''',
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 50,
//                 margin: EdgeInsets.only(left: 5),
//                 child: Text(
//                   " Upon receipt of the bank transfer, you will be sent a welcome email and conclusion of the registration with an assigned Personal Code, with which you will be given many advantages that you can use directly on our website.",
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 50,
//                 margin: EdgeInsets.only(left: 5),
//                 child: Text(
//                   "Information",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               rowTextAndText(
//                 text:
//                     """ To authorize the federation to process my personal data pursuant to """,
//                 text2: "EU Regulation 2016/679",
//                 checkBox: true,
//                 checkBoxWidget: Obx(() => Checkbox(
//                     value: authcontroller.checkvalue1.value,
//                     onChanged: (value) {
//                       authcontroller.checkvalue1.value = value!;
//                     })),
//                 checkBoxValue: authcontroller.checkvalue1.value,
//                 fieldName: "Privacy* ",
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               rowTextAndText(
//                 fieldName: "Declaration* ",
//                 text:
//                     'asks to join the "National Federation of Parapharmacies" and undertakes to support all the initiatives undertaken for the development of the "Non-Conventioned Pharmacy" in Italy.',
//               ),
//               SizedBox(
//                 height: 2,
//               ),
//               rowTextAndText(
//                 fieldName: " ",
//                 text: '''In particular, the undersigned declares:
//     to undertake to respect the statute, any Internal Regulations and social resolutions, as well as to\n favor the interests of the federation pursuant to the social statute;\nthe subscriber of this is aware pursuant to and for the purposes of article 76 of the consolidated\n text referred to in the Presidential Decree445/2000,of the responsibilities and civil and/or penal\n consequences envisaged in the event of false\n declarations and/or formation or use of false documents and of the fact that the Federation pursuant to art. 71 of the aforementioned\n consolidated text, reserves the right to carry out spot checks on the declarations produced\n, acquiring the relative documentation.
//     to subscribe and pay the all-inclusive fee of Euro 100.00. ''',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 30,
//                 child: Text(
//                   "IBAN: IT87O0706216200000000003160",
//                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               rowTextAndText(
//                 checkBoxValue: authcontroller.checkvalue2.value,
//                 fieldName: 'Regulation *',
//                 checkBox: true,
//                 checkBoxWidget: Obx(() => Checkbox(
//                     value: authcontroller.checkvalue2.value,
//                     onChanged: (value) {
//                       authcontroller.checkvalue2.value = value!;
//                     })),
//                 text:
//                     ''' ORDINARY Members: participate in and make use of all the activities, promotions, conventions,
//     initiatives and protections promoted by the Association, participate in the Assembly with the right to vote and, after 2 years of joining the association, they can access the associative positions''',
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text(
//                   "* Fields marked with an asterisk are mandatory.",
//                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 50,
//                 child: CustomElevatedButton(
//                     color: Colors.white,
//                     onPressed: () {
//                       Get.toNamed(HomePage.routeName);
//                     },
//                     child: Text(
//                       'Confirmation',
//                       style: TextStyle(color: Colors.black),
//                     )),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 50,
//                 child: CustomElevatedButton(
//                     color: Color(0xffD9534F),
//                     onPressed: () {},
//                     child: Text(
//                       'Cancel',
//                       style: TextStyle(color: Colors.white),
//                     )),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 500,
//               )
//             ],
//           ),
//         ))
//       ])),
//     );
//   }

//   Widget rowTextAndText(
//       {final double? height,
//       required final String fieldName,
//       final String? text,
//       final String? text2,
//       final bool? checkBox,
//       final checkBoxWidget,
//       bool? checkBoxValue}) {
//     return Container(
//       height: height,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//               margin: EdgeInsets.only(bottom: 10),
//               child: Text(
//                 fieldName,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//           Container(child: Text(text ?? '')),
//           Text(text2 ?? ''),
//           Container(
//             child: Row(
//               children: [
//                 checkBox == true ? checkBoxWidget : Container(),
//                 checkBox == true ? Text('I agree') : Container(),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class RowTextAndField extends StatelessWidget {
//   const RowTextAndField({
//     Key? key,
//     required this.width,
//     required this.authcontroller,
//     required this.fieldName,
//     this.hintText,
//     this.dropDownField,
//   }) : super(key: key);

//   final double width;
//   final AuthController authcontroller;
//   final String fieldName;
//   final String? hintText;
//   final bool? dropDownField;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 30,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Container(
//                 alignment: Alignment.centerLeft,
//                 child: FittedBox(
//                   child: Text(
//                     fieldName,
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
//                   ),
//                 )),
//           ),
//           // Expanded(
//           //   flex: 3,
//           //   child: Container(
//           //     alignment: Alignment.centerLeft,
//           //     child: dropDownField == true
//           //         ? DropDownFieldWidget()
//           //         : customtextformfield(
//           //             hinttext: hintText ?? '',
//           //             controller: authcontroller.firstNameController),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

// class CustomElevatedButton extends StatelessWidget {
//   final onPressed;
//   final Widget? child;
//   final borderRadius;
//   final color;
//   final size;
//   final bool enabled;

//   CustomElevatedButton({
//     this.onPressed,
//     this.child,
//     this.borderRadius,
//     this.color,
//     this.size,
//     this.enabled = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: !enabled ? null : onPressed,
//       style: ButtonStyle(
//         elevation: MaterialStateProperty.all<double>(0),
//         backgroundColor: MaterialStateProperty.all<Color>(
//           !enabled ? Colors.grey[200] : color ?? Colors.white,
//         ),
//         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//           RoundedRectangleBorder(
//             borderRadius: borderRadius ?? BorderRadius.circular(10.0),
//             side: BorderSide(color: Colors.black),
//           ),
//         ),
//         minimumSize: MaterialStateProperty.all<Size>(
//           size ?? Size(MediaQuery.of(context).size.width, 45),
//         ),
//       ),
//       child: child,

//       // style: ElevatedButton.styleFrom(
//       //   shape: RoundedRectangleBorder(
//       //     borderRadius: borderRadius ?? BorderRadius.circular(10.0),
//       //   ),

//       //   primary: color ?? kPrimaryColor,
//       // minimumSize: Size(50.w, 50.h),
//       // ),
//     );
//   }
// }
