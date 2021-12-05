import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:joyboy/constants.dart';


class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Color get color {
    switch (_selectedIndex.value) {
      case 0:
        return aColor;
        break;
      case 1:
        return bColor;
        break;
      case 2:
        return cColor;
        break;
      case 3:
        return dColor;
        break;
      case 4:
        return eColor;
        break;
      default:
    }
  }

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => [
        "Home",
        "Destination",
        "Culinary",
        "Handcraft",
        "Festival",
      ];

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
