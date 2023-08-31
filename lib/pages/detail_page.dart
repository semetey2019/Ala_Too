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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Steigenberger Makadi'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: 539,
            child: ListView(
              children: [
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
                          child: _buildRow(
                            [
                              DotsIndicator(
                                dotsCount: _totalDots,
                                position: _currentPosition,
                                reversed: false,
                                decorator: decorator,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Стандартный с видом на бассейн\n или сад",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Color(0xffFBFBFC)),
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
                      decoration: const BoxDecoration(color: Color(0xffFBFBFC)),
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
                Container(
                  height: 35,
                  width: 192,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(13, 114, 255, 0.10),
                  ),
                  child: Row(
                    children: [
                      const Column(
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
                      const SizedBox(
                        width: 80,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff0D72FF),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "186 600 ₽",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "за 7 ночей с перелётом",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff828796)),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    fixedSize: Size(343, 18),
                  ),
                  child: const Text(
                    "Выбрать номер",
                    style: TextStyle(fontSize: 16),
                    selectionColor: Color(0xFFFFFFFF),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: 539,
            child: ListView(
              children: [
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
                          child: _buildRow(
                            [
                              DotsIndicator(
                                dotsCount: _totalDots,
                                position: _currentPosition,
                                reversed: false,
                                decorator: decorator,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Стандартный с видом на бассейн\n или сад",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Color(0xffFBFBFC)),
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
                      decoration: const BoxDecoration(color: Color(0xffFBFBFC)),
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
                Container(
                  height: 35,
                  width: 192,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(13, 114, 255, 0.10),
                  ),
                  child: Row(
                    children: [
                      const Column(
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
                      const SizedBox(
                        width: 80,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff0D72FF),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "186 600 ₽",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "за 7 ночей с перелётом",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff828796)),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    fixedSize: Size(343, 18),
                  ),
                  child: const Text(
                    "Выбрать номер",
                    style: TextStyle(fontSize: 16),
                    selectionColor: Color(0xFFFFFFFF),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
