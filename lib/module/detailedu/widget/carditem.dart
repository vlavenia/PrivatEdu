import 'package:flutter/material.dart';
import 'package:privatedu/theme/app_decoration.dart';
import 'package:privatedu/theme/theme_helper.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';
import 'package:privatedu/widgets/custom_image_view.dart';

class carditem extends StatelessWidget {
  String image;
  String name;
  String desc;
  carditem(this.image, this.name, this.desc, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 68,
                  width: 68,
                  padding: EdgeInsets.all(16),
                  decoration: IconButtonStyleHelper.lightorange,
                  child: CustomImageView(
                    imagePath: image,
                    color: appTheme.deepOrange400,
                  ),
                ),
                Container(width: 10),
                Container(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 13.0,
                      ),
                      Text(desc,
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 12))
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 20.0,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
