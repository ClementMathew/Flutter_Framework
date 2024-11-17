import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Theming/Color.dart';

class SVG extends StatefulWidget {
  const SVG({super.key});

  @override
  State<SVG> createState() => _SVGState();
}

class _SVGState extends State<SVG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TITLE
        title: Text("SVG"),
        centerTitle: true,

        // BG COLOR
        backgroundColor: design,

        // LEADING
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),

        // ACTIONS
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],

        //SHAPE
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

        //ELEVATION
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [SvgPicture.network('https://www.svgrepo.com/show/202647/network.svg'),
            SvgPicture.asset('assets/svg/SVG.svg'),
            Directionality(textDirection: TextDirection.rtl,
            child: SvgPicture.asset('assets/svg/SVG.svg',color: Colors.black,matchTextDirection: true,)),
          ],
        ),),
      ),
    );
  }
}