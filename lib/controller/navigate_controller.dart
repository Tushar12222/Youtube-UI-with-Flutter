import 'package:flutter/cupertino.dart';
import 'package:youtubeclone/model/navigate_model.dart';

class Navigate_controller
{
  Navigate_model nm = Navigate_model();
  Widget showscreens({required int index})
  {
    return nm.screens[index];
  }
}