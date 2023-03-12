import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.indigoAccent]),
        )),
        title: Center(child: Text('HomePage')),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black87, Colors.black38]),
        ),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 450,
                  child: ActionChip(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 40),
                    backgroundColor: Colors.grey,
                    label: Text('Controller'),
                    pressElevation: 10,
                    onPressed: () {
                      Navigator.pushNamed(context, '/controller');
                    },
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 350,
                  child: ActionChip(
                    padding: EdgeInsets.symmetric(horizontal: 95, vertical: 20),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 40),
                    backgroundColor: Colors.grey,
                    label: Text('Camera'),
                    pressElevation: 10,
                    onPressed: () {
                      Navigator.pushNamed(context, '/camera');
                    },
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 350,
                  child: ActionChip(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 40),
                    backgroundColor: Colors.grey,
                    label: Text('Navigation'),
                    pressElevation: 10,
                    onPressed: () {},
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
