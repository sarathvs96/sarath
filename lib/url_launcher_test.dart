import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class UrlLauncherTest extends StatefulWidget {
  const UrlLauncherTest({super.key});

  @override
  State<UrlLauncherTest> createState() => _UrlLauncherTestState();
}

class _UrlLauncherTestState extends State<UrlLauncherTest> {
  @override
  final Uri _url = Uri.parse('https://www.youtube.com');
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Url Launcher",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
      body: Center(
          child: Container(
            width: 100,
            height: 50,
            child: ElevatedButton(
              onPressed: (){
                _launchUrl();
              },
              child: Center(
                child: Text("URL",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),
          ),

      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
