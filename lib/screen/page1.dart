import 'package:flutter/material.dart';
import 'package:page3/screen/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://png.pngtree.com/thumb_back/fh260/background/20210224/pngtree-blue-abstract-background-business-image_564246.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Virtual",
                      style: TextStyle(
                          color: Colors.tealAccent,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ecosystem.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "An ecosystem is a geographic area where plants, animals, \n\nAs well as weather and landscape, work together to form a bubble.",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        GridView.count(
                           physics: ScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.0,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    "https://t4.ftcdn.net/jpg/00/67/90/19/360_F_67901984_mzXsXD6NC7hxddHeePp1i7hGVuljQl32.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Container(
                                height: 400,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    "https://thumbs.dreamstime.com/b/smiling-businessman-office-colleagues-background-smiling-businessman-office-colleagues-background-101628040.jpg",
                                     fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.tealAccent.withOpacity(.9),
                                child:IconButton(
                                 onPressed: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2(),));
                                 },
                              
                                 icon:Icon(Icons.arrow_forward),
                                 iconSize: 32, ),
                              ),
                              SizedBox(width: 10,),
                              Text("Get\nStarted",style: TextStyle(color: Colors.white),)
                            ],
                          ),

                          Spacer(),

                          Container(
                            height: 3,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),

    );
  }
}