import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

/*
class NeumorphicPage extends StatefulWidget {
  const NeumorphicPage({Key? key}) : super(key: key);

  @override
  State<NeumorphicPage> createState() => _NeumorphicPageState();
}

class _NeumorphicPageState extends State<NeumorphicPage>
    with SingleTickerProviderStateMixin {
  double anim = 1.0;
  @override
  void initState() {
    super.initState();
    withAnimation(
      vsync: this,
      curve: Curves.easeInOutCirc,
      //isRepeatReversed: true,
      tween: Tween(begin: 0.1, end: 2.0),
      callBack: (animationVal, controllerVal) {
        anim = double.parse(animationVal.toString());
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: VStack(
          [
            VxTimeline(
              animationDuration: 3.seconds,
              showTrailing: true,
              timelineList: List.generate(
                2,
                (index) => VxTimelineModel(
                    id: index,
                    heading: "7 / 02 / 2022 ",
                    description: "Wellcome to Vx"),
              ),
            ),
            const VxTextField(
              borderType: VxTextFieldBorderType.roundLine,
              borderColor: Vx.gray400,
              isPassword: true,
              borderRadius: 35,
              labelText: "Name",
              labelStyle: TextStyle(fontSize: 25),
            ).p12(),
            const VxZeroCard(
              isDark: true,
              isBottomLinesActive: false,
            ),
            Container().skeleton(height: 10, width: 100, color: Vx.green400),
            // "This news is comimg from the velocityx"
            //     .marquee(
            //       textStyle: const TextStyle(fontSize: 20),
            //     )
            //     .expand(),
            // const VxMarquee(
            //   text: 'This is a VxMarquee widget',
            //   textStyle: TextStyle(fontSize: 20, color: Vx.red500),
            // ).expand(),
            "oriantation"
                .text
                .ellipsis
                .xl
                .make()
                .box
                .p12
                .color(Vx.randomColor)
                .make()
                .badge(
                    count: 5,
                    size: 20,
                    type: VxBadgeType.round,
                    textStyle: const TextStyle(fontSize: 15, color: Vx.white),
                    limit: true,
                    color: Vx.red500),
            20.heightBox,
            "assets/images/Mustansar.png".circularAssetImage(radius: 50).onTap(
              () {
                // VxToast.show(context,
                //     msg: "Welcome to VxToast",
                //     bgColor: Colors.red,
                //     position: VxToastPosition.center);
                // context.showToast(msg: "Hello");
                // final close = context.showLoading(msg: "Loading...");
                // Future.delayed(2.seconds,close);
                context.showLoading(msg: "loading");
              },
            ),
            "Animation".text.xl.makeCentered().scale(scaleValue: anim),
            const VxStepper(
              inputBoxColor: Colors.green,
              actionIconColor: Vx.red100,
            ),
            VxRating(
              onRatingUpdate: (value) {},
              size: 30,
              count: 5,
              // stepInt: true,
              value: 8.5,
            ),
            1234567
                .numCurrencyWithLocale(locale: "hi_IN")
                .text
                .xl2
                .bold
                .make()
                .mouseRegion(
              onHover: (event) {
                print(event.delta);
              },
            )
          ],
        ),
      ),
    );
  }
}

class NeumorphicApp extends StatelessWidget {
  const NeumorphicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Vx.indigo800,
        child: VStack(
          [
            "Neumorphic"
                .text
                .white
                .xl2
                .make()
                .box
                .neumorphic(color: Vx.indigo800, curve: VxCurve.convex)
                .square(200)
                .alignCenter
                .rounded
                .make(),
            "."
                .text
                .white
                .xl2
                .make()
                .box
                .neumorphic(color: Vx.indigo800, curve: VxCurve.convex)
                .square(100)
                .alignCenter
                .roundedFull
                .make()
                .onTap(() {
              VxCurve.emboss;
            }),
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*darkTheme: ThemeData(),      //for dark mode
       theme: ThemeData(primarySwatch: Colors.red),  //for light theme
       home: const HomePage(),*/
      theme: MyThemes.lightTheme(),
      themeMode: ThemeMode.light,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
