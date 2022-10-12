import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

class BookingViewModel extends ChangeNotifier {
  final _pageController = BehaviorSubject<PageController>();

  PageController get pageController => _pageController.value;

  set pageController(PageController value) {
    _pageController.value = value;
  }

  void init() {
    pageController = PageController(initialPage: 0);
  }

  void backToHome() {
    pageController.jumpToPage(0);
  }

  void nextPage() {
    pageController.nextPage(
        duration: Duration(microseconds: 100), curve: Curves.ease);
  }

  void previousPage() {
    pageController.previousPage(
        duration: Duration(microseconds: 100), curve: Curves.ease);
  }

  bool checkPop() {
    switch (pageController.page?.toInt()) {
      case 0:
        SystemNavigator.pop();
        return false;
        break;
      case 1:
        pageController.jumpToPage(0);
        return false;
        break;
      case 2:
        pageController.jumpToPage(1);
        return false;
        break;
      case 3:
        backToHome();
        return false;
        break;
      default :
        return true;
    }
  }

  @override
  void dispose() {
    _pageController.close();
    _pageController.drain();
    super.dispose();
  }
}
