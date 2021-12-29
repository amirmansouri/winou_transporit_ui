import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:winou_transporit/home_page.dart';
import 'package:winou_transporit/widget/liquid_swipe.dart';



class Liquid extends StatelessWidget {
  const Liquid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LiquidSwipe(
         pages: LiquidPages,fullTransitionValue: 300,
            enableLoop: true,
          enableSideReveal: true,
          positionSlideIcon:0.8,
          waveType: WaveType.liquidReveal,
        //  onPageChangeCallback: (page)=> pageChangeCallback(page),
          onPageChangeCallback: (page)=> pageChangeCallback(HomePage),
       //   currentUpdateTypeCallback: (updateType)=> updateTypeCammback(updateType),

        ),

      ),
    );
  }

  pageChangeCallback( page) {

    page =  HomePage();

  }

  updateTypeCammback(UpdateType updateType) {
    print(updateType);
  }
}
