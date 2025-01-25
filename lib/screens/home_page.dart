import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:land_registration/widget/header.dart';
import 'package:land_registration/widget/homePageDecription.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';
import 'package:universal_html/html.dart' as html;

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    if (width > 600) {
      width = 590;
      isDesktop = true;
    }
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 223, 199, 128),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Material(
              color: Colors.blue,
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 150.0, top: 15, right: 50, bottom: 15),
                child: HeaderWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0, top: 0, right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LeftDescription(),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,                          children: [
                            CustomAnimatedContainer('Contract Owner', () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const CheckPrivateKey(
                              //               val: "owner",
                              //             )));
                              Navigator.of(context).pushNamed(
                                '/login',
                                arguments: "owner",
                              );
                            }),
                            CustomAnimatedContainer('Land Inspector', () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const CheckPrivateKey(
                              //               val: "LandInspector",
                              //             )));
                              Navigator.of(context).pushNamed(
                                '/login',
                                arguments: "LandInspector",
                              );
                            }),
                            CustomAnimatedContainer('User', () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const CheckPrivateKey(
                              //               val: "UserLogin",
                              //             )));
                              Navigator.of(context).pushNamed(
                                '/login',
                                arguments: "UserLogin",
                              );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        width: 600,
                        height: 600,
                        child: SvgPicture.asset(
                          'assets/background_svg.svg',
                          height: 20.0,
                          width: 20.0,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
