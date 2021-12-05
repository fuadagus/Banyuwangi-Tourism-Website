import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:joyboy/detailpage/detail_page.dart';

import 'package:joyboy/responsive.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../constants.dart';

class BlogPostCard extends StatefulWidget {
  final String title;
  final String image;
  final String location;
  final String description;

  const BlogPostCard({this.title, this.image, this.location, this.description});

  @override
  _BlogPostCardState createState() => _BlogPostCardState();
}

class _BlogPostCardState extends State<BlogPostCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(DetailPage(
          title: widget.title,
          description: widget.description,
          location: widget.location,
          image: widget.image,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.78,
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Lokasi".toUpperCase(),
                        style: TextStyle(
                          color: kDarkBlackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: kDefaultPadding),
                      Expanded(
                        child: Text(
                          widget.location,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      widget.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 32 : 24,
                        fontFamily: "Raleway",
                        color: kDarkBlackColor,
                        height: 1.3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    widget.description,
                    maxLines: 4,
                    style: TextStyle(height: 1.5),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kPrimaryColor, width: 3),
                            ),
                          ),
                          child: Text(
                            "Read More",
                            style: TextStyle(color: kDarkBlackColor),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
