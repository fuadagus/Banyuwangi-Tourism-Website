import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyboy/controllers/MenuController.dart';
import 'package:joyboy/responsive.dart';

import '../../../constants.dart';


final MenuController _controller = Get.put(MenuController());

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final MenuController _controller = Get.put(MenuController());
  _header(index, property) {
    switch (index) {
      case 0:
        switch (property) {
          case "title":
            return "Welcome";
            break;
          case "widget":
            return HomeWidget();
            break;
          case "navigation":
            return NextNavigation();
            break;
          default:
        }
        break;
      case 1:
        switch (property) {
          case "title":
            return "Destination";
            break;
          case "widget":
            return DestinationWidget();
            break;
          case "navigation":
            return DoubleNavigation();
            break;
          default:
        }

        break;
      case 2:
        switch (property) {
          case "title":
            return "Culinary";
            break;
          case "widget":
            return CulinaryWidget();
            break;
          case "navigation":
            return DoubleNavigation();
            break;
          default:
        }

        break;
      case 3:
        switch (property) {
          case "title":
            return "Handcraft";
            break;
          case "widget":
            return HandcraftWidget();
            break;
          case "navigation":
            return DoubleNavigation();
            break;
          default:
        }
        break;
      case 4:
        switch (property) {
          case "title":
            return "Festival";
            break;
          case "widget":
            return FestivalWidget();
            break;
          case "navigation":
            return BackNavigation();
            break;
          default:
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        color: _controller.color,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    SizedBox(height: kDefaultPadding * 2),
                    Text(
                      _header(_controller.selectedIndex, "title"),
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: _header(_controller.selectedIndex, "widget"),
                    ),
                    FittedBox(
                        child:
                            _header(_controller.selectedIndex, "navigation")),
                    if (Responsive.isDesktop(context))
                      SizedBox(height: kDefaultPadding),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "Enjoy Your Holiday",
      style: TextStyle(color: Colors.white),
    ));
  }
}

class DestinationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Destinasi wisata paling sering dikunjungi",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class CulinaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "Makanan khas banyuwangi",
      style: TextStyle(color: Colors.white),
    ));
  }
}

class HandcraftWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "Kerajinan tangan masyarakat banyuwangi",
      style: TextStyle(color: Colors.white),
    ));
  }
}

class FestivalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "Majestic Banyuwangi festival",
      style: TextStyle(color: Colors.white),
    ));
  }
}

class NextNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          icon: Icon(Icons.arrow_forward_ios_rounded),
          color: Colors.white,
          onPressed: () {
            int index = _controller.selectedIndex < 4
                ? _controller.selectedIndex + 1
                : _controller.selectedIndex + 0;
            _controller.setMenuIndex(index);
          }),
    );
  }
}

class BackNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Colors.white,
          onPressed: () {
            int index = _controller.selectedIndex > 0
                ? _controller.selectedIndex - 1
                : _controller.selectedIndex + 0;
            _controller.setMenuIndex(index);
          }),
    );
  }
}

class DoubleNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.white,
            onPressed: () {
              int index = _controller.selectedIndex > 0
                  ? _controller.selectedIndex - 1
                  : _controller.selectedIndex + 0;
              _controller.setMenuIndex(index);
            }),
        IconButton(
            icon: Icon(Icons.arrow_forward_ios_rounded),
            color: Colors.white,
            onPressed: () {
              int index = _controller.selectedIndex < 4
                  ? _controller.selectedIndex + 1
                  : _controller.selectedIndex + 0;
              _controller.setMenuIndex(index);
            }),
      ],
    ));
  }
}
