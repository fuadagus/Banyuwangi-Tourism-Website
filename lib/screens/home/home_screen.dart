import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyboy/constants.dart';
import 'package:joyboy/controllers/MenuController.dart';
import 'package:joyboy/responsive.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';

final MenuController _controller = Get.put(MenuController());

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  postController(index) {
    switch (index) {
      case 0:
        return firestore.collection("Home");
        break;
      case 1:
        return firestore.collection("Destination");
        break;
      case 2:
        return firestore.collection("Culinary");
        break;
      case 3:
        return firestore.collection("Handcraft");
        break;
      case 4:
        return firestore.collection("Festival");
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    MenuController _controller = Get.put(MenuController());

    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(children: [
              StreamBuilder(
                  stream: postController(_controller.selectedIndex).snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data.docs
                            .map<Widget>((e) => BlogPostCard(
                                  title: (e.data()["Title"] == null)
                                      ? "gagal mendapatkan data"
                                      : e.data()["Title"],
                                  location: (e.data()["Location"] == null)
                                      ? "gagal mendapatkan data"
                                      : e.data()["Location"],
                                  description: (e.data()["Description"] == null)
                                      ? e.data().toString()
                                      : e.data()["Description"],
                                  image: (e.data()["Image"] == null)
                                      ? "assets/images/NoImageFound.png"
                                      : e.data()["Image"],
                                ))
                            .toList(),
                      );
                    } else {
                      return Text('Loading..');
                    }
                  })
            ]),
          ),
          if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
          // Sidebar
          if (!Responsive.isMobile(context))
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: kDefaultPadding),
                  Categories(),
                  SizedBox(height: kDefaultPadding),
                  RecentPosts(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
