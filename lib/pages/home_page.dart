import 'package:alatoo/model/hotel_model.dart';
import 'package:alatoo/pages/detail_page.dart';
import 'package:alatoo/slider/slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
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
  List<HotelModel>? hotelList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Отель",
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
                  Container(
                    width: 150,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 199, 0, 0.20),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffffa800),
                            ),
                            Text(
                              "5 Превосходно",
                              style: TextStyle(color: Color(0xffffa800)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Steigenberger Makadi",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const Text(
                    "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
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
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 428,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Text(
                          'Об отеле',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
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
                            width: 30,
                          ),
                          const Text(
                            "Платный Wi-Fi в фойе",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff828796)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "30 км до аэропорта",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff828796)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "1 км до пляжа",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff828796)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Отель VIP-класса с собственными гольф \n полями. Высокий  уровнь сервиса. Рекомендуем \nдля респектабельного отдыха. Отель \nпринимает гостей от 18 лет!",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          decoration:
                              const BoxDecoration(color: Color(0xffFBFBFC)),
                          width: 343,
                          height: 184,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/emoji_happy.svg'),
                              const SizedBox(
                                width: 15,
                              ),
                              const Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Удобства",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "Самое необходимое",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                      ),
                                      Divider(
                                        indent: 20,
                                        endIndent: 30,
                                        color: Color(0x26828796),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 110,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                MyCustomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const DetailPegeView())));
                  },
                  borderRadius: 20, // Здесь можно настроить радиус границ
                  buttonText: 'К выбору номера',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final String buttonText;
  final TextStyle style;

  MyCustomButton({
    required this.onPressed,
    required this.borderRadius,
    required this.buttonText,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            minimumSize: const Size.fromHeight(48)),
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
