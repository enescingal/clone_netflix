import 'package:clone_netflix/theme/color.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Text(
          "Download Page",
          style: TextStyle(color: white),
        ),
      ),
    );
  }
}
