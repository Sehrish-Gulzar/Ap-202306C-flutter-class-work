import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

List color = [
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.black
];

List images = [
  "assets/images/flower.jpg",
  "assets/images/pics (1).jpg",
  "assets/images/pics (2).jpg",
  "assets/images/pics (3).jpg",
  "assets/images/pics (4).jpg",
  "assets/images/pics (5).jpg"
];
List texts = [
  "Beautiful",
  "Amazing",
  "Awesome",
  "Handsome",
  "Gorgeous",
  "Killer",
  "Slaying"
];

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    var q_height = MediaQuery.sizeOf(context).height;
    var q_width = MediaQuery.sizeOf(context).width;
    MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: q_width * 0.5,
                mainAxisSpacing: q_height * 0.05,
                crossAxisSpacing: q_width * 0.05),
            itemCount: color.length,
            itemBuilder: (context, index) {
              // return Container(
              //   child: Column(
              //     children: [
              //       Container(
              //         child: Image.asset(images[index],
              //             height: 200,
              //             filterQuality: FilterQuality.high,
              //             fit: BoxFit.cover),
              //       ),
              //       Text(texts[index]),
              //     ],
              //   ),
              //   // color: color[index],
              // );

              return Card(
                color: color[index],
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(images[index],
                          height: q_height * 0.25,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover),
                    ),
                    Text(texts[index]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.shopping_cart))
                      ],
                    )
                  ],
                ),
              );
            })

        /// Fixed space grid
        // GridView.extent(
        //   maxCrossAxisExtent: 300,
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               image: AssetImage("assets/images/flower.jpg"))),
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),

        /// Fixed Number grid
        // GridView.count(
        //   crossAxisCount: 4,
        //   crossAxisSpacing: 30,
        //   mainAxisSpacing: 50,
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               image: AssetImage("assets/images/flower.jpg"))),
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.purple
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
        );
  }
}
