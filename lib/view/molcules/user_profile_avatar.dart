import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/services/extensions.dart';
import '../../../gen/colors.gen.dart';

class UserProfileAvatar extends StatelessWidget {
  const UserProfileAvatar({super.key, this.name, this.imageURL, this.email, this.isEditProfile, this.isNameVisible});
  final String? imageURL;
  final String? name;
  final String? email;
  final bool? isEditProfile;
  final bool? isNameVisible;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children:[
              Container(
              padding: EdgeInsets.all(6.r),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                      color: ColorName.primaryColor.withOpacity(0.5)
                  )
              ),
              child: Visibility(
                visible: imageURL?.isNetworkImageUrl() == true,
                replacement: CircleAvatar(
                  minRadius: 50.r,
                  backgroundColor:ColorName.primaryColor.withOpacity(0.5),
                  child: const Icon(Icons.person,size: 75,color:  Colors.white,),
                ),
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(imageURL ?? ""),
                ),
              ),
            ),

              Visibility(
                visible: isEditProfile ?? false,
                child: Positioned(
                    bottom:0,
                    right: 0,
                    left: 100,
                    child: Container(
                      decoration:  const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),

                      child: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.zero,
                          decoration:  BoxDecoration(
                            color: ColorName.primaryColor.withOpacity(0.6),
                              shape: BoxShape.circle
                          ),
                          child: IconButton(
                              onPressed: (){},
                              icon: const Icon(
                                Icons.edit,
                                size: 25,
                                color: Colors.white,))),
                    )),
              )
         ]),
          Visibility(
            visible: isNameVisible ?? false ,
            child: Column(children: [
              context.vSpaceBox10,
              Text(
                name ?? "",
                style: context.textTheme.titleLarge,
              ),
              context.vSpaceBox5,
              Text(email ?? "",
                style: context.textTheme.titleMedium?.copyWith(color: ColorName.primaryColor.withOpacity(0.8)),)
            ],),
          ),

        ],
      ),
    );
  }
}
