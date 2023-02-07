import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // late Animation<Alignment?> alignAnimation;

  // late Animation<Color?> animation;

  // late AnimationController animationController;
  RxInt index = 0.obs;
  User?  user = FirebaseAuth.instance.currentUser;

  // RxList<Color> color = [
  //   const Color(
  //     0xffFD7E14,
  //   ),
  //   const Color(0xff6F42C1)
  // ].obs;

  // Alignment begin = Alignment.centerLeft;
  // Alignment end = Alignment.centerRight;
  // Rx<Color> leftColor = Colors.yellow.obs;
  // Rx<Color> rightColor = Colors.deepOrangeAccent.obs;
  // void colorUpdation() {}
  // @override
  // void onInit() {
  //   Future.delayed(const Duration(milliseconds: 10), () {
  //     rightColor.value = Colors.red;
  //   });
  // animationController = AnimationController(
  //   vsync: this,
  //   duration: Duration(milliseconds: 2000),
  // );
  // animationController.repeat();
  // alignAnimation =
  //     AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
  //         .animate(animationController);
  // animation = ColorTween(
  //     begin: Color(0xff6F42C1),
  //     end: Color(
  //       0xffFD7E14,
  //     )).animate(animationController);

}
