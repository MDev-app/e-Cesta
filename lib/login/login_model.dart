import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailLogin widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for senhaLogin widget.
  TextEditingController? senhaLoginController;
  late bool senhaLoginVisibility;
  String? Function(BuildContext, String?)? senhaLoginControllerValidator;
  // State field(s) for emailCadastrar widget.
  TextEditingController? emailCadastrarController;
  String? Function(BuildContext, String?)? emailCadastrarControllerValidator;
  // State field(s) for senhaCadastrar widget.
  TextEditingController? senhaCadastrarController;
  late bool senhaCadastrarVisibility;
  String? Function(BuildContext, String?)? senhaCadastrarControllerValidator;
  // State field(s) for senhaCadastrar2 widget.
  TextEditingController? senhaCadastrar2Controller;
  late bool senhaCadastrar2Visibility;
  String? Function(BuildContext, String?)? senhaCadastrar2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaLoginVisibility = false;
    senhaCadastrarVisibility = false;
    senhaCadastrar2Visibility = false;
  }

  void dispose() {
    emailLoginController?.dispose();
    senhaLoginController?.dispose();
    emailCadastrarController?.dispose();
    senhaCadastrarController?.dispose();
    senhaCadastrar2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
