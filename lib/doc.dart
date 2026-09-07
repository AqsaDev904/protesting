import 'package:flutter/material.dart';

void main(){
    runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
home: Scaffold(
    appBar: AppBar(
        title: Text("Setting"),
        actions: [
           Icon(
            Icons.notifications,
           ),
        ],
    ),
  body: Column(
   children: [
Stack(
      alignment: Alignment.center,
children: [

    ClipRRect(
        borderRadius: BorderRadius.circular(100),
      child: Image.asset(
          "image.jpg",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
      ),
    ),
    Icon(
    Icons.image,    
    ),

],

),
Text("John sipher"),
 Divider(),
 ListTile(
leading: Icon(Icons.person),
title: Text("Profile"),trailing: Row(
     mainAxisSize: MainAxisSize.min,
    children: [

         Icon(Icons.arrow_forward_ios,size: 18,),

    ],
),

 ),
Divider(),
  ListTile(
leading: Icon(Icons.notification_add),
title: Text("Notification"),
trailing: Row(
     mainAxisSize: MainAxisSize.min,
    children: [

         Icon(Icons.arrow_forward_ios,size: 18,),

    ],
),

 ),
 Divider(),
  ListTile(
leading: Icon(Icons.subscriptions),
title: Text("Subscription",),
trailing: Row(
     mainAxisSize: MainAxisSize.min,
    children: [

         Icon(Icons.arrow_forward_ios,size: 18,),

    ],
),

 ),
 Divider(),
  ListTile(
leading: Icon(Icons.security),
title: Text("login & security"),
trailing: Row(
    
     mainAxisSize: MainAxisSize.min,
    children: [

         Icon(Icons.arrow_forward_ios,size: 18,),

    ],
),
 ),
 Divider(),
   ListTile(
leading: Icon(Icons.call),
title: Text("call us"),
  trailing: Row(
    
    mainAxisSize: MainAxisSize.min,
    children: [
    
      Icon(Icons.arrow_forward_ios,size: 18,),
    ],),
 ),
 Divider(),



Center(
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Icon(
            
          Icons.power_settings_new,
          color: Colors.white,
          size: 19,
        ),
      ),

      SizedBox(width: 8),

      Text(
        "Logout",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ],
  ),
),
  ],
),
),
    );

  }
}