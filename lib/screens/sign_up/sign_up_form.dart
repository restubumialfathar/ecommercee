import 'package:ecommercee/components/custom_suffix_icon.dart';
import 'package:ecommercee/components/error_form_message.dart';
import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  String? password;
  String? confirmPassword;
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          passwordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          confirmPasswordFormField(),
          ErorrFormMessage(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          MyDefaultButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }

              if (errors.isEmpty) {
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            (!errors.contains(kEmailNullError) &&
                !errors.contains(kInvalidEmailError))) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          onPressed: () {},
          icon: const Icon(Icons.email),
        ),
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        setState(() {
          password = value;
        });
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 &&
            (!errors.contains(kPassNullError) &&
                !errors.contains(kShortPassError))) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
      obscureText: _obscureText, // Use the state to control visibility
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }

  TextFormField confirmPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == value) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kConfirmPassNullError)) {
          setState(() {
            errors.add(kConfirmPassNullError);
          });
        } else if (value.isNotEmpty && errors.contains(kConfirmPassNullError)) {
          setState(() {
            errors.remove(kConfirmPassNullError);
          });
        } else if (value != password && !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return '';
        }
        return '';
      },
      obscureText: _obscureText, // Use the state to control visibility
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
