

import 'package:flutter/material.dart';
import 'package:themeproject/custom_icon_icons.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
class Home extends StatelessWidget {
  // const Splashscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.17, -1.0),
              end: Alignment(0.16, 1.0),
              colors: [const Color(0xFF58328C), const Color(0xFF2D155B)],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
          SizedBox(
            width: 59.0,
            height: 60.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 56.0,
                    height: 56.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF2D155B),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF6A3CA8).withOpacity(0.84),
                  ),
                  child: Container(
                    width: 52.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF57318B),
                    ),
                    child: Icon(CustomIcon.historyicon,color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
        Row(
          children: [
            Icon(Icons.location_on,color: Colors.white,),
            SizedBox(width: 10,),
            // Spacer(),
            Container(
              width: 200,
              color: Color(0xFF58328C),
              child: MarqueeText(
              text: 'Don not worry when you are not recognized',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              speed: 30,
            ),
      ),
          ],
        ),
      SizedBox(
        width: 59.0,
        height: 60.0,
        child: InkWell(
          onTap: (){},
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF2D155B),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF6A3CA8).withOpacity(0.84),
                ),
                child: Container(
                  width: 52.0,
                  height: 52.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF57318B),
                  ),
                  child: Icon(Icons.wifi,color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterToggleTab(
                    unSelectedBackgroundColors: [Color(0xFF58328C)],
                    selectedBackgroundColors: [Color(0xFF2D155B)],
                    // width in percent, to set full width just set to 100
                    width: 80,
                    borderRadius: 30,
                    height: 50,
                    initialIndex:0,
                    // selectedColors: [Colors.blue],
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                    unSelectedTextStyle: TextStyle(
                        color: Color(0xFF2D155B),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    labels: ["Download", "Upload"],
                    selectedLabelIndex: (index) {
                      print("Selected Index $index");
                    },
                  ),

                ],
              )
            ],
          )
      ),
    ));
  }
}
