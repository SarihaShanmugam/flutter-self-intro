import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareInformation extends StatefulWidget {
  const ShareInformation({super.key});

  @override
  State<ShareInformation> createState() => _ShareInformationState();
}

class _ShareInformationState extends State<ShareInformation> {
  var  _name = 'Sariha';
  var _email = 'sarihakkn@gmail.com';
  var _mobile = '7200271277';
  var _address = 'Neha homes, Plot No:95,\nSachidhanandhapuram,\nThazhambur, Chennai - 600130.';



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Share Information',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: GestureDetector(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  title: Text(
                    _name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onLongPress: () {
                    Share.share(_name);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: GestureDetector(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    _email,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onLongPress: () {
                    Share.share(_email);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: GestureDetector(
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android_rounded,
                    color: Colors.red,
                  ),
                  title: Text(
                    _mobile,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onLongPress: () {
                    Share.share(_mobile);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: GestureDetector(
                child: ListTile(
                  leading: Icon(
                    Icons.location_pin,
                    color: Colors.red,
                  ),
                  title: Text(
                    _address,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onLongPress: () {
                    Share.share(_address);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
