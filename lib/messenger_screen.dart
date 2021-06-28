import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://brooklynintergroup.org/brooklyn/wp-content/uploads/2021/01/flower-729512__340-1.jpg'),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child:
                      Icon(Icons.camera_alt, size: 16.0, color: Colors.white))),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.edit, size: 16.0, color: Colors.white))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("Search")
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 120.0,
                child: ListView.separated(
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true, // if i need the whole items list to be loaded at the same time
                itemBuilder: (context, position) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.0,
                ),
                itemCount: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }

  // to add list view
// 1. design an item
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://brooklynintergroup.org/brooklyn/wp-content/uploads/2021/01/flower-729512__340-1.jpg'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 5.0,
                  bottom: 3.0,
                ),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nesma Tharwat ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "this message from nesma",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 5.0,
                        height: 5.0,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      ),
                    ),
                    Text("10.pm"),
                  ],
                )
              ],
            ),
          )
        ],
      );

  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://brooklynintergroup.org/brooklyn/wp-content/uploads/2021/01/flower-729512__340-1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 5.0,
                    bottom: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              "nesma tharwat mansour",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
