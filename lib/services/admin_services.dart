import 'dart:io';

import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/utils/showSnackbar.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';

class AdminServices {
  void sellProduct(
      {required BuildContext context,
      required String name,
      required String description,
      required double price,
      required double qty,
      required String category,
      required List<File> images}) async {
    try {
      final cloudinary =
          CloudinaryPublic(GlobalVariables.cloudinary_cloud_name, 't5cnuesc');
      List<String> imageURLS = [];
      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageURLS.add(res.secureUrl);
      }
    } catch (error) {
      showSnackBar(context, error.toString());
    }
  }
}
