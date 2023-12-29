import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../view/forgot_pasword_auth_view.dart';

class ForgotPaswordAuthController extends State<ForgotPaswordAuthView> {
  static late ForgotPaswordAuthController instance;
  late ForgotPaswordAuthView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
