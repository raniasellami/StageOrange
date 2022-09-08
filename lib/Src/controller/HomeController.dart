import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class TripController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }
}
