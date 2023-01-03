import 'package:flutter/material.dart';

class HOmepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.card_giftcard,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      child: Text("USE DISCOUNT CODE"),
                    )
                  ],
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 200,
                      width: 300,
                      color: Colors.red,
                      margin: EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: 90,
                            margin: EdgeInsets.all(10),
                            color: Colors.green,
                          ),
                          Container(
                            height: 170,
                            width: 220,
                            margin: EdgeInsets.all(10),
                            color: Colors.yellow,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("aaaa"),
                                Text("aaaa"),
                                Text("aaaa"),
                                Row(
                                  children: [
                                    Text("Quentity"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "RS.200",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      size: 20,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _decrementButton(itemIndex) {
    return FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   numberOfItems[index]--;
          // });
        },
        child: new Icon(const IconData(0xe15b, fontFamily: 'MaterialIcons'),
            color: Colors.black),
        backgroundColor: Colors.white);
  }

  _incrementButton(itemIndex) {
    return FloatingActionButton(
      child: Icon(Icons.add, color: Colors.black87),
      backgroundColor: Colors.white,
      onPressed: () {
        // setState(() {
        //   numberOfItems[index]++;
        // });
      },
    );
  }
}
