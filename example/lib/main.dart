import 'package:flutter/material.dart';
import 'package:metro_button/metro_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metro Buttons Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Metro Buttons Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommandButton(
                title: Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blueAccent
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Subtitle',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueAccent
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: (){print('Hello');},
                icon: Icon(Icons.ac_unit, color: Colors.blueAccent, size: 44.0,),
                backgroundColor: Colors.white,
                borderColor: Colors.blueAccent,
                reverse: true,
                radius: 5.0,
              ),
              SizedBox(height: 10.0),
              ShortcutButton(
                title: Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: (){print('World');},
                icon: Icon(Icons.ac_unit, color: Colors.blueAccent, size: 32.0,),
                backgroundColor: Colors.white,
                borderColor: Colors.blueAccent,
                radius: 3.0,
                badge: Text('10', style: TextStyle(color: Colors.blueAccent, fontSize: 12),),
                size: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

