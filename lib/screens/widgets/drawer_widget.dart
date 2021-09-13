import 'package:flutter/material.dart';
import 'package:gerbang_mobile/constant.dart';
import 'package:gerbang_mobile/screens/sikap_screens/login_page.dart';
import 'package:gerbang_mobile/screens/widgets/custom_text.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 20,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Tegar Yasindra',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CustomText(
                              text: '11181081',
                              fontSize: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: CustomText(
                  text: 'Feedback',
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              BuildMenuItem(
                icon: Icons.question_answer,
                title: 'FAQ (Soon)',
              ),
              const SizedBox(
                height: 8,
              ),
              BuildMenuItem(
                icon: Icons.report,
                title: 'Report (Soon)',
              ),
              Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 8,
              ),
              BuildMenuItem(
                icon: Icons.exit_to_app,
                title: 'Logout',
                onTap: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  const BuildMenuItem({
    this.icon,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: primaryColor,
      ),
      title: CustomText(
        text: title,
        fontSize: 18,
      ),
      onTap: onTap,
    );
  }
}
