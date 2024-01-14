import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // color variables
  Color appBarColor = Color(0xff03061c);
  Color bgColor = Color(0xff03061B);
  Color cardColor = Color(0xff171830);

  // tempprary varable
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // expanded joto gula dibo totgula same map er space nibe
            Expanded(
              flex: 2, // ei expand ta double nibe
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Card(
                        color: isMale == true ? Colors.red : cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 45,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Card(
                        color: isMale == false ? Colors.red : cardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 45,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2, // etao double hobe
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2, // etao double hobe
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: cardColor,
                      child: Column(
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(fontSize: 34, color: Colors.white),
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: cardColor,
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(fontSize: 34, color: Colors.white),
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              height: 50,
              minWidth: double.infinity,
              child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
