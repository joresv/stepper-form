import 'package:flutter/material.dart';
import 'package:progress_form/screens/page1.dart';
import 'package:progress_form/screens/page2.dart';
import 'package:progress_form/screens/page3.dart';
import 'package:progress_form/widgets/progress.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PFormController pformController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pformController = PFormController(3);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          DraggableScrollableSheet(
              maxChildSize: 1,
              minChildSize: .5,
              initialChildSize: .6,
              builder: (ctx, controller) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PForm(
                          // height: 500,
                          controller: pformController,
                          pages: [
                            Page1(),
                            Page2(),
                            Page3(),
                          ],
                          title: [
                            PTitle(
                              title: "Infos personnelles",
                              subTitle: "Ajouter vos infos personnelles",
                            ),
                            PTitle(
                              title: "Infos sur les addresses",
                              subTitle: "Ajouter votre adresse",
                            ),
                            PTitle(
                              title: "Infos professionnelles",
                              subTitle: "Ajouter vos infos pro",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              pformController.prevPage();
              setState(() {});
            },
            child: Visibility(
              visible: pformController.currentPage != 0 ? true : false,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              pformController.nextPage();
              setState(() {});
            },
            child: Visibility(
              visible: pformController.currentPage == pformController.length - 1
                  ? false
                  : true,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
