import 'package:flutter/material.dart';


class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Half-Circle Avatar in Containers'),
      ),
      body:Column(
        children: [
          Stack(
            children: [
              Column(

              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
                Container(
                  
                )
              ],
              )
            ]
          )
        ]
      ),
    );
  }
}

class UpperContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 75.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 0,
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 50.0,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LowerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 50.0,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 75.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
