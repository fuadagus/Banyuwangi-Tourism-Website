import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

// ignore: must_be_immutable
// class DetailPage extends StatefulWidget {
//   String title;
//   String image;
//   String description;
//   String location;
//   DetailPage({
//     this.title,
//     this.description,
//     this.image,
//     this.location,
//   });
//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.back();
//         },
//         child: Icon(
//           Icons.arrow_back_ios_new_sharp,
//         ),
//         elevation: 20.00,
//       ),
//       body: getBody(),
//     );
//   }

//   Widget getBody() {
//     var size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Stack(
//         children: <Widget>[
//           Container(
//             width: double.infinity,
//             height: size.height * 0.5,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: NetworkImage(widget.image)

//                   ,
//                   fit: BoxFit.cover),
//             ),
//             child: SafeArea(
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     InkWell(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Icon(Icons.arrow_back_ios_new_outlined)

//                         ),
//                     Row(
//                       children: <Widget>[
//                         // SvgPicture.asset("assets/images/heart_icon.svg"),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         // SvgPicture.asset("assets/images/share_icon.svg"),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: size.height * 0.45),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.white, borderRadius: BorderRadius.circular(50)),
//             child: Padding(
//               padding: const EdgeInsets.all(30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Align(
//                     child: Container(
//                       width: 150,
//                       height: 7,
//                       decoration: BoxDecoration(
//                           color: Colors.red[50],
//                           borderRadius: BorderRadius.circular(10)),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     widget.title,
//                     style: TextStyle(fontSize: 20, height: 1.5),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             "Location",
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 3,
//                           ),
//                           Expanded(
//                             child: Text(
//                               widget.location,
//                               style: TextStyle(fontSize: 13),
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     widget.description,
//                     style: TextStyle(height: 1.6),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Gallery",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Image(image: NetworkImage(widget.image)),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class DetailPage extends StatelessWidget {
  String title;
  String image;
  String description;
  String location;
  DetailPage({
    this.title,
    this.description,
    this.image,
    this.location,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: Icon(
          Icons.arrow_back_ios_new_sharp,
        ),
        elevation: 20.00,
      ),
      body: getBody(context),
    );
  }

  Widget getBody(context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new_outlined)),
                    Row(
                      children: <Widget>[
                        // SvgPicture.asset("assets/images/heart_icon.svg"),
                        SizedBox(
                          width: 20,
                        ),
                        // SvgPicture.asset("assets/images/share_icon.svg"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.45),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    child: Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, height: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 3 / 4,
                            child: Expanded(
                              child: Text(
                                location,
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: TextStyle(height: 1.6),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: NetworkImage(image)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
