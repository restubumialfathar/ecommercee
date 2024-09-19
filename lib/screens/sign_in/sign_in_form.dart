import 'package:ecommercee/components/custom_suffix_icon.dart';
import 'package:ecommercee/components/error_form_message.dart';
import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/screens/forgot_password/components/forgot_password.dart';
import 'package:ecommercee/screens/login_success/components/login_success_screen.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;
  bool _obscureText = true;
  bool checkValue = false; // Move this outside build to preserve its state

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Email Field
          emailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          // Password Field
          passwordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          // Remember Check Box
          rememberAndForgot(), // Remove checkValue from here
          ErorrFormMessage(errors: errors),
          SizedBox(
              height: errors.isEmpty ? 0 : getProportionateScreenHeight(20)),
          MyDefaultButton(
            text: 'Sign In',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                if (errors.isEmpty) {
                  // Your form submission logic
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
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
      onChanged: (value) {
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

  Row rememberAndForgot() {
    return Row(
      children: [
        Checkbox(
          value: checkValue,
          onChanged: (value) => setState(() {
            checkValue = value!; // Update checkValue directly within the state
          }),
          activeColor: kPrimaryColor,
        ),
        const Text('Remember Me'),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
          },
          child: const Text(
            'Forgot Password',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
