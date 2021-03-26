import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: RaisedButton(
                    child: Text("change theme"),
                    onPressed: (){
                      showDialog(context: context, builder: (_) => ThemeDialog());
                }),

              ),
              // ElevatedButton(onPressed: (){
              //   Navigator.pop(context);
              // }, child: Text("Go to Back"))
            ],
          ),
        ),
      ),
    );
  }
}
