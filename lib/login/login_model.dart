import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SignUp-Email widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  String? _signUpEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email...';
    }
    return null;
  }

  // State field(s) for SignUp-Password widget.
  FocusNode? signUpPasswordFocusNode;
  TextEditingController? signUpPasswordTextController;
  late bool signUpPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpPasswordTextControllerValidator;
  String? _signUpPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SignUp-ConfirmedPassword widget.
  FocusNode? signUpConfirmedPasswordFocusNode;
  TextEditingController? signUpConfirmedPasswordTextController;
  late bool signUpConfirmedPasswordVisibility;
  String? Function(BuildContext, String?)?
      signUpConfirmedPasswordTextControllerValidator;
  String? _signUpConfirmedPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for Logi widget.
  FocusNode? logiFocusNode;
  TextEditingController? logiTextController;
  String? Function(BuildContext, String?)? logiTextControllerValidator;
  String? _logiTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid LogIn';
    }
    return null;
  }

  // State field(s) for Login-Password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;
  String? _loginPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signUpEmailTextControllerValidator = _signUpEmailTextControllerValidator;
    signUpPasswordVisibility = false;
    signUpPasswordTextControllerValidator =
        _signUpPasswordTextControllerValidator;
    signUpConfirmedPasswordVisibility = false;
    signUpConfirmedPasswordTextControllerValidator =
        _signUpConfirmedPasswordTextControllerValidator;
    logiTextControllerValidator = _logiTextControllerValidator;
    loginPasswordVisibility = false;
    loginPasswordTextControllerValidator =
        _loginPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    signUpPasswordFocusNode?.dispose();
    signUpPasswordTextController?.dispose();

    signUpConfirmedPasswordFocusNode?.dispose();
    signUpConfirmedPasswordTextController?.dispose();

    logiFocusNode?.dispose();
    logiTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
