import 'package:flutter/cupertino.dart';

import '../view/create.dart';
import '../view/home.dart';
import '../view/library.dart';
import '../view/shorts.dart';
import '../view/subscriptions.dart';

class Navigate_model
{
  List screens = [Home(),Shorts(),Create(),Subscriptions(),Library()];
}