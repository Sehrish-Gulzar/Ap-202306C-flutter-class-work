import 'package:flutter/material.dart';

class My_Container extends StatelessWidget {
  const My_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          //  SingleChildScrollView(
          // child: Center(
          // child: Column(
          //   children: [
          //     Container(
          //       child: Container(
          //         width: 50,
          //         height: 50,
          //         color: Colors.black,
          //       ),
          //       margin: EdgeInsets.all(6),
          //       padding: EdgeInsets.all(6),
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(bottom: 10, top: 50),
          //       color: Colors.green,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       child: Container(
          //         width: 50,
          //         height: 50,
          //         color: Color(0xFFF2e706a),
          //       ),
          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          //       color: Colors.purple,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Colors.black,
          //         image: DecorationImage(
          //             image: AssetImage("assets/images/flower.jpg")),
          //       ),
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //           color: Colors.green,
          //           borderRadius: BorderRadius.only(
          //             bottomLeft: Radius.circular(50),topRight: Radius.circular(10),topLeft: Radius.circular(20),bottomRight: Radius.circular(80)
          //           ),
          //           border: Border.all(color: Colors.red, width: 5)),
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.purple,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.purple,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.purple,
          //       width: 100,
          //       height: 100,
          //     )
          // ],
          // ),

          // ),
          // ),

          Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.amber,
              image:
                  DecorationImage(image: AssetImage("assets/images/flower.jpg"))
              // gradient: LinearGradient(colors: [Colors.black, Colors.red,Colors.green,Colors.purple])

              // gradient: RadialGradient(colors: [Colors.black, Colors.red,Colors.green,Colors.purple])

              // gradient: SweepGradient(colors: [Colors.black, Colors.red,Colors.green,Colors.purple])

              // boxShadow: [

              //   BoxShadow(color: const Color.fromARGB(255, 196, 29, 29),blurRadius: 20, ),

              //   BoxShadow(color: Color.fromARGB(193, 29, 196, 113),blurRadius: 10,),

              //   ]

              ),
        ),
      ),
    );
  }
}
