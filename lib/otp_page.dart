import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  String _message = '';

  void _verifyOtp() {
    final enteredOtp = _controllers.map((controller) => controller.text).join();
    if (enteredOtp.length == 6) {
      // Simulate OTP verification
      if (enteredOtp == '123456') {
        setState(() {
          _message = 'OTP Verified Successfully!';
        });
      } else {
        setState(() {
          _message = 'Invalid OTP. Please try again.';
        });
      }
    } else {
      setState(() {
        _message = 'Please enter a 6-digit OTP.';
      });
    }
  }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    _focusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'HalalFood',
                  style: TextStyle(
                      fontFamily: 'Audiowide',
                      fontWeight: FontWeight.w400,
                      fontSize: 42,
                      color: const Color(0xFF004333),
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4),
                      ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xFF96A4A0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: _controllers[index],
                          focusNode: _focusNodes[index],
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              if (index < 5) {
                                _focusNodes[index + 1].requestFocus();
                              } else {
                                _focusNodes[index].unfocus();
                              }
                            }
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: InkWell(
                  onTap: _verifyOtp,
                  child: Container(
                    height: 37,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF00B73E),
                    ),
                    child: const Center(
                      child: Text(
                        'Войти',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(
                              0xFFFFFFFF,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: Text.rich(
                  TextSpan(
                    text: "Регистрируясь, я соглашаюсь с условиями ",
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xFF96A4A0),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'оферты и политикой',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Text(
                  ' конфинденциальности',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xFF96A4A0),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _message,
                style: TextStyle(
                  color: _message == 'OTP Verified Successfully!'
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
