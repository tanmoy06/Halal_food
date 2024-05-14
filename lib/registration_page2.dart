import 'package:demo/Components/my_list_tile.dart';
import 'package:demo/Components/nav_bar.dart';
import 'package:flutter/material.dart';

class ResistrationPage2 extends StatelessWidget {
  const ResistrationPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Моя информация',
          style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: MyListTile(
                leading: Image.asset(
                  'assets/icons/delivery.png',
                  height: 28,
                  width: 28,
                ),
                title: const Text(
                  'Доставка и оплата',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF505050)),
                ),
                subtitle: const Text(
                  'Узнайте все способы доставки и оплаты',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF96A4A0)),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 28,
                ),
              )),
          const SizedBox(
            height: 8,
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: MyListTile(
                leading: Image.asset(
                  'assets/icons/question.png',
                  height: 28,
                  width: 28,
                ),
                title: const Text(
                  'Обратная связь',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF505050)),
                ),
                subtitle: const Text(
                  'Задайте нам вопрос',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF96A4A0)),
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 28,
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: InkWell(
              onTap: () {},
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
        ],
      ),
      bottomNavigationBar: MyNavBar(),
    );
  }
}
