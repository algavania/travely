import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:travely/app/common/color_values.dart';
import 'package:travely/app/common/shared_code.dart';
import 'package:travely/app/routes/router.gr.dart';
import 'package:travely/app/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Container(
                width: 100.w,
                color: ColorValues.lightBlue,
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Image.asset('assets/login-asset.png'),
              ),
              Column(
                children: [
                  SizedBox(height: 49.h),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                    ),
                    padding: const EdgeInsets.all(SharedCode.defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                        SizedBox(height: 1.h),
                        const Text('Masuk dengan akunmu untuk melanjutkan.'),
                        SizedBox(height: 2.5.h),
                        CustomTextField(
                          labelText: 'Email',
                          hintText: 'Masukkan email',
                          controller: _emailController,
                          textInputType: TextInputType.emailAddress,
                          validator: SharedCode().emailValidator,
                        ),
                        SizedBox(height: 2.h),
                        CustomTextField(
                          labelText: 'Password',
                          hintText: 'Masukkan password',
                          controller: _passwordController,
                          isPassword: true,
                          validator: SharedCode().passwordValidator,
                        ),
                        SizedBox(height: 3.h),
                        ElevatedButton(onPressed: () {
                          _buttonPressed();
                        }, child: const Text('Masuk')),
                        SizedBox(height: 2.h),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Belum memiliki akun?',
                                style: GoogleFonts.nunito(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Daftar',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          AutoRouter.of(context).pushAndPopUntil(const RegisterRoute(),
                                              predicate: (Route<dynamic> route) => false);
                                        })
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _buttonPressed() async {
    if (_formKey.currentState?.validate() ?? false) {
      AutoRouter.of(context).pushAndPopUntil(const NavigationRoute(),
          predicate: (Route<dynamic> route) => false);
    }
  }
}
