import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

enum FieldType { text, email, password }

class IconicTextField extends StatefulWidget {
  const IconicTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    required this.type,
    this.width = 0.8,
    this.textScaling = 1,
    this.iconScaling = 1,
  }) : super(key: key);

  final String labelText;
  final IconData prefixIcon;
  final FieldType type;
  final double width;
  final double textScaling;
  final double iconScaling;

  @override
  State<StatefulWidget> createState() => _IconicTextFieldState();
}

class _IconicTextFieldState extends State<IconicTextField> {
  String? _labelText;
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      _labelText = widget.labelText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * widget.width,
        child: Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                setState(() {
                  _labelText = null;
                });
              } else {
                setState(() {
                  _labelText = widget.labelText;
                });
              }
            },
            child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  obscureText:
                      widget.type == FieldType.password && !_passwordVisible,
                  validator: widget.type == FieldType.email
                      ? (val) =>
                          (val != null && isEmail(val)) ? null : "Invalid Email"
                      : null,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            widget.prefixIcon,
                            size: 40 * widget.iconScaling,
                            color: Theme.of(context).primaryColor,
                          )),
                      suffixIcon: widget.type == FieldType.password
                          ? IconButton(
                              icon: Icon(
                                  !_passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Theme.of(context).primaryColor),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            )
                          : null,
                      labelText: _labelText,
                      labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25 * widget.textScaling,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF666161)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 25 * widget.textScaling),
                ))));
  }
}
