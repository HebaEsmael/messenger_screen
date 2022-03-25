import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel{
  final String userName;
  final String message;
  final String userImage;
  UserModel({
    required this.userName,
    required this.message,
    required this.userImage,
  });
}