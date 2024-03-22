import 'package:flutter/material.dart';

class Verifypage extends StatelessWidget {
  const Verifypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.blue[100]),
        // color: Colors.amber,
        child:
         Stack(
          children: [
            Positioned(
              top: 350,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Column(
                  children: [
                    Image.asset("assets/images/Screenshot (63) 1.png"),
      
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Divider(
                        color: const Color.fromARGB(255, 2, 46, 82),
                      ),
                    ),
                    // // Padding(
                    //   padding: const EdgeInsets.only(left: 40, right: 40),
                    //   child:
                    // Row(
                    //   children: [
                    //     Container(
                    //       width: 50,
                    //       height: 50,
                    //       color: Colors.amber,
                    //     ),
      
                        // SizedBox(width: 10,),
                        // TextFormField(
                        //     keyboardType: TextInputType.number,
                        //     decoration: InputDecoration(
                        //       labelText: "Phone Number",
                        //       prefix:
                        //           Image.asset("assets/images/Rectangle 56.png"),
                        //     )),
                    //   ],
                    // ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          // color: Colors.red,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/Rectangle 56.png"))
                        ),
                        
                        
                        ),
                        // Text("data")
                         Padding(
                          padding: const EdgeInsets.only(left: 40,right: 40),
                           child: TextFormField(
                                decoration: const InputDecoration(labelText: "Phone Number"),
                              ),
                         ),
                      ],
      
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      child: Center(child: Text("Verify")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
