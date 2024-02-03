import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/Theming/DarkWhite.dart';
import 'package:first_app/Theming/theme_constants.dart';
import 'package:first_app/Theming/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import './BasicWidgets/Container.dart';
import 'Theming/Color.dart';

const urlLandScapeVideo = 'https://static.videezy.com/system/resources/previews/000/017/936/original/ICON-VERSION5.mp4';

ThemeManager themeManager = ThemeManager();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
    themeManager.addListener(themeListener);
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First App",
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeManager.themeMode,
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 150,),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/Splash.png"),
                ),
                SizedBox(height: 100),
                SizedBox(
                  height: 40,
                  width: 50,
                  child: AnimatedSplashScreen(
                    backgroundColor: Colors.transparent,
                    duration: 1500,
                    pageTransitionType: PageTransitionType.fade,
                    splashTransition: SplashTransition.fadeTransition,
                    splash: Column(
                      children: [
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              design
                          ),
                        )
                      ],
                    ),
                    nextScreen: MyWidget(),
                    splashIconSize: 180,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}