import 'package:flutter/material.dart';

class FindEventScreen extends StatelessWidget {
  const FindEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/party.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search an Event',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 30),
              makeItem(
                image: 'assets/images/paty.jpg',
                date: 17,
              ),
              makeItem(
                image: 'assets/images/paty.jpg',
                date: 17,
              ),
              makeItem(
                image: 'assets/images/paty.jpg',
                date: 17,
              ),
              makeItem(
                image: 'assets/images/paty.jpg',
                date: 17,
              ),
              makeItem(
                image: 'assets/images/paty.jpg',
                date: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({required String image, date}) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(

        children: [
          Expanded(
            child: Container(
              width: 50,
              height: 200,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      date.toString(),
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'SEP',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
