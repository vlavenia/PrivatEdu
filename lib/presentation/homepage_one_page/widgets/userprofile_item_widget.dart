import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
   String title;
   Color colorbackground;
   String icon;
   


  UserprofileItemWidget( this.title, this.colorbackground, this.icon, {Key? key})
      : super(
          key: key,
        );
        final checked = true;
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 149.h,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              height: 119.v,
              width: 149.h,
              color: colorbackground,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  //conditional widget
                if (title=='Geografi') 
              Positioned(
                bottom: 65,
                left: 62,
                child: CustomImageView(
                  imagePath: 'assets/images/img_vector_primarycontainer.svg',
                  height: 169.v,
                  width: 166.h,
                  color: Color.fromARGB(255, 24, 43, 136),
                ),
              ),
        
                  
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 12.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath:
                                    icon,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                color: Colors.white
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipsisV2,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(height: 38.v),
                          Text(
                            title,
                            style: CustomTextStyles.titleMediumWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}
