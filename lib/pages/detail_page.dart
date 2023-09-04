import 'package:alatoo/pages/home_page.dart';
import 'package:alatoo/pages/person_page.dart';
import 'package:alatoo/slider/slider.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DetailPegeView extends StatefulWidget {
  const DetailPegeView({super.key});

  @override
  State<DetailPegeView> createState() => _DetailPegeViewState();
}

class _DetailPegeViewState extends State<DetailPegeView> {
  final _totalDots = 5;
  int _currentPosition = 0;

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  final decorator = DotsDecorator(
    activeColor: Colors.black,
    size: const Size.square(7.0),
    activeSize: const Size.square(7.0),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Steigenberger Makadi",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 539,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SliderWidget(urls: [
                    "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                    "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                    "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
                  ]),
                  const SizedBox(height: 16),
                  const Text(
                    "Стандартный с видом на бассейн или сад",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffFBFBFC)),
                        width: 140,
                        height: 30,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "Все включено",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828796)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffFBFBFC)),
                        width: 140,
                        height: 30,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "Кондиционер",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828796)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 35,
                    width: 192,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromRGBO(13, 114, 255, 0.10),
                    ),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Подробнее о номере",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0D72FF)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "от 134 673 ₽",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "за тур с перелётом",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff828796)),
                      ),
                    ],
                  ),
                  MyCustomButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PersonPage())));
                    },
                    borderRadius: 20, // Здесь можно настроить радиус границ
                    buttonText: 'Выбрать номер',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 539,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SliderWidget(urls: [
                    "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                    "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                    "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
                  ]),
                  const SizedBox(height: 16),
                  const Text(
                    "Стандартный с видом на бассейн или сад",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffFBFBFC)),
                        width: 140,
                        height: 30,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "Все включено",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828796)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffFBFBFC)),
                        width: 140,
                        height: 30,
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "Кондиционер",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828796)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 35,
                    width: 192,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromRGBO(13, 114, 255, 0.10),
                    ),
                    child: const Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Подробнее о номере",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0D72FF)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "от 134 673 ₽",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "за тур с перелётом",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff828796)),
                      ),
                    ],
                  ),
                  MyCustomButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PersonPage())));
                    },
                    borderRadius: 20, // Здесь можно настроить радиус границ
                    buttonText: 'Выбрать номер',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
