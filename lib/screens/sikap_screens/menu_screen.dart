import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gerbang_mobile/screens/sikap_screens/home_screen_sikap.dart';
import 'package:gerbang_mobile/screens/sia_screens/home_screens_sia.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';
import 'package:gerbang_mobile/screens/widgets/drawer_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey.shade200,
      drawer: DrawerWidget(),
      appBar: AppBar(
        leadingWidth: 50,
        backgroundColor: Colors.white,
        leading: Container(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
            icon: Icon(
              Icons.menu,
              size: 26,
              color: Colors.grey,
            ),
          ),
        ),
        titleSpacing: 0.0,
        title: Container(
          child: Image.asset(
            'assets/images/logo_itk.png',
            fit: BoxFit.cover,
            height: 45,
            filterQuality: FilterQuality.medium,
          ),
        ),
      ),
      body: Column(
        children: [
          BuildButtonMenu(
            title: 'SI Akademik',
            image: 'assets/images/mortarboard.png',
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage())),
          ),
          BuildButtonMenu(
            title: 'SI Kemahasiswaan',
            image: 'assets/images/student.png',
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageSikap())),
          ),
        ],
      ),
    );
  }
}

class BuildButtonMenu extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;

  const BuildButtonMenu({
    Key key,
    this.image,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 5,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                height: 120,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: title,
                alignment: Alignment.center,
                fontSize: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
