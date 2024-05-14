import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 53,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 0.6, color: const Color(0xFF00B73E)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: "+7 (999) 999-99-99",
                        hintStyle: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(
                            0xFF96A4A0,
                          ),
                        ),
                        border: InputBorder.none,
                        label: Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Ваш телефон',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(
                                0xFF96A4A0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 37,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFE9E9E9),
                  ),
                  child: const Center(
                    child: Text(
                      'Получить код',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(
                            0xFF96A4A0,
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
          ],
        ),
      )),
    );
  }
}
