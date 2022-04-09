import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

enum FieldType { text, email, password }

class IconicTextField extends StatefulWidget {
  const IconicTextField(
      {Key? key,
      required this.labelText,
      required this.prefixIcon,
      required this.type})
      : super(key: key);

  final String labelText;
  final IconData prefixIcon;
  final FieldType type;

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
        width: MediaQuery.of(context).size.width * 0.8,
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
                            size: 40,
                            color: Theme.of(context).primaryColor,
                          )),
                      suffixIcon: widget.type == FieldType.password
                          ? IconButton(
                              icon: Icon(
                                  _passwordVisible
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
                      labelStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF666161)),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.white))),
                  style: const TextStyle(fontSize: 25),
                ))));
  }
}
