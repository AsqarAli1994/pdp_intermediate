import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  static final String id = "hotels";

  const Hotels({Key? key}) : super(key: key);

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/img_4.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.2),
                    ]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Best Hotels Ever",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Icon(Icons.search_outlined),
                                ),
                                labelText: 'Search for Hotels...'),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("Business Hotels", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height:200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image: "images/img_8.png", title: "Hotel 1"),
                    makeItem(image: "images/img_5.png", title: "Hotel 2"),
                    makeItem(image: "images/img_6.png", title: "Hotel 3"),
                    makeItem(image: "images/img_7.png", title: "Hotel 4"),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("Airport Hotels", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height:200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image: "images/img_9.png", title: "Hotel 1"),
                    makeItem(image: "images/img_5.png", title: "Hotel 2"),
                    makeItem(image: "images/img_7.png", title: "Hotel 3"),
                    makeItem(image: "images/img_6.png", title: "Hotel 4"),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("Resort Hotels", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height:200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image: "images/img_7.png", title: "Hotel 1"),
                    makeItem(image: "images/img_6.png", title: "Hotel 2"),
                    makeItem(image: "images/img_9.png", title: "Hotel 3"),
                    makeItem(image: "images/img_5.png", title: "Hotel 4"),
                  ],
                ),
              ),
            ),


            // Container(
            //   height: 50,
            //   child: ListView.separated(
            //     separatorBuilder: (context, index) => Container(width: 20,),
            //     shrinkWrap: true,
            //     itemCount: 30,
            //     physics: ScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) => Text("dataqwertlzkdsjhbzldkfgvlkzdffvblhbf $index"),
            //     // children: [
            //     //   // makeItem(image:"", title ""),
            //     // ],
            //   ),
            // ),


            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: ScrollPhysics(),
            //   itemBuilder: (context, index) => Text("data $index"),
            //   itemCount: 20,
            // ),


            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) => Text("dataqwertlzkdsjhbzldkfgvlkzdffvblhbf $index"),
            //   physics: ScrollPhysics(),
            //   itemCount: 40,
            // )
          ],
        ),
      ),
    );
  }
Widget makeItem({image, title}){
  return AspectRatio(aspectRatio: 1.4/1,
  child: Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover
      )
    ),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2)
          ]
        )
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),

            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(Icons.favorite, color: Colors.red,),
              ),
            )
          ],
        )
      ),
    )
  ),
  );
}
}
