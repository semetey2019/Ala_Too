import 'package:alatoo/pages/detail_page.dart';
import 'package:flutter/foundation.dart';
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

  int _validPosition(int position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1;
    return position;
  }

  void _updatePosition(int position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  Widget _buildRow(List<Widget> widgets) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widgets,
    );
  }

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  final decorator = DotsDecorator(
    activeColor: Colors.black,
    size: Size.square(7.0),
    activeSize: Size.square(7.0),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(scrollDirection: Axis.vertical, children: [
          Container(
            height: 530,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 63),
                  child: Text(
                    "Отель",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child:
                                Image.asset("assets/1.png", fit: BoxFit.contain
                                    // height: 257,
                                    // width: 390,
                                    ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset("assets/1.png", fit: BoxFit.cover),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        left: MediaQuery.of(context).size.width / 2.5,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: _buildRow([
                            DotsIndicator(
                              dotsCount: _totalDots,
                              position: _currentPosition,
                              reversed: false,
                              decorator: decorator,
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 199, 0, 0.20),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Steigenberger Makadi",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                        Row(
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
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 375,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: const Column(
              children: [
                Text(
                  'Об отеле',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "3-я линия",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff828796)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Платный Wi-Fi в фойе",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff828796)),
                    ),
                  ],
                ),
                Column(
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
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ButtomContainer(
                  image: 'assets/emoji_happy.svg',
                  text: 'Удобства',
                  text2: 'Самое необходимое',
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
                // SizedBox(height: 10),
                ButtomContainer(
                  image: 'assets/tick.svg',
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  text: 'Что включено',
                  text2: 'Самое необходимое',
                ),
                ButtomContainer(
                  image: 'assets/close.svg',
                  text: 'Что не включено',
                  text2: 'Самое необходимое',
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ),
          MyCustomButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DetailPegeView())));
            },
            borderRadius: 10, // Здесь можно настроить радиус границ
            buttonText: 'Моя кнопка',
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ]));
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
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(buttonText),
    );
  }
}

class ButtomContainer extends StatelessWidget {
  const ButtomContainer(
      {super.key,
      required this.image,
      required this.icon,
      required this.text,
      required this.text2});
  final String image;
  final Icon icon;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 314,
      decoration: const BoxDecoration(
        color: Color(0xffFBFBFC),
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 231, 230, 230),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            image,
          ),
          const SizedBox(
            width: 15,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          IconButton(
            onPressed: () {},
            icon: icon,
          ),
        ],
      ),
    );
  }
}
