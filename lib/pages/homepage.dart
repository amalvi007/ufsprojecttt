import 'package:flutter/material.dart';
import 'package:ufsflutterprj/data/data_response.dart';
import 'package:ufsflutterprj/pages/widgets/small_container.dart';
import 'package:ufsflutterprj/pages/widgets/sub_heading.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor:Colors.blue[100], 
      // bottom: TabBar(tabs: [
      //   Tab(icon: Icon(Icons.abc),text: "Training",),
      //   Tab(icon: Icon(Icons.abc),text: "Inspection",),

      //   Tab(icon: Icon(Icons.abc),text: "Calibration",),

      // ]) ,
      ),

      body:
      // Container(
      //   width: double.infinity,
      //   height: double.infinity
      //   ,
      //   color: Colors.amber,
      // )
       SingleChildScrollView(
        child: Container(
          height: double.infinity ,
          color: Colors.blue[100],
          child: ListView(
            children: [
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallContainer(
                        text: "Total Training Attended",
                        color: Color(0xFFD3D5FF),
                      ),
                      SmallContainer(
                        text: "Upcomming Trainings",
                        color: Color(0xFFFED3FF),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Explore Our Various ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 82, 148),
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured Training"),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.chevron_right)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Card(
                              child: Container(
                                width: 250,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                  // image:DecorationImage(image: AssetImage("assetName"))
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: detailsacc.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Card(
                              child: Container(
                                width: 120,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  image:DecorationImage(image: AssetImage("${detailsacc[index]["image"]}"),
                                  fit: BoxFit.fill
                                  )
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  
                  SubHeading(text: "Accreditation"),
                     SubHeading(text: "See what our customer says"),
                      ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(20),
                              child: Card(
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  
                                    // image:DecorationImage(image: AssetImage("assetName"))
                                  ),
                                ),
                              ),
                            );
                          }),
                    SubHeading(text: "Our Clients"),
                      ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(20),
                              child: Card(
                                child: Container(
                                  width: 120,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                    // image:DecorationImage(image: AssetImage("assetName"))
                                  ),
                                ),
                              ),
                            );
                          }),
                ],
              ),
            ],
          ),
        )
      ),

      //  appBar: ,
    );
  }
}
