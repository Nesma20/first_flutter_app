import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Home"),
          actions: [
            IconButton(
                onPressed: onNotification
                // onPressed needs anonymous function so we called onNotification without its ()

                ,
                icon: Icon(Icons.notification_important)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
          backgroundColor: Colors.teal,
        ),
        body:Column(

    children: [
      Padding(padding:  const EdgeInsets.all(50.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),

        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children : [
            Image(image: NetworkImage("https://brooklynintergroup.org/brooklyn/wp-content/uploads/2021/01/flower-729512__340-1.jpg",

          ),
            width: 200.0,
            height: 200.0,
            fit: BoxFit.cover ,
          ),
            Container(
              color: Colors.black.withOpacity(0.7),
                width: 200.0,
                padding: EdgeInsetsDirectional.all(5.0),
                child:
                Text(
                    'Flower',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
            ),

          ]),
      ),
      )
    ]
    )
    );
        
  }


  // when notification button clicked
  void onNotification() {
    print("notification pressed");
  }
}
