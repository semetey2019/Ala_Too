import 'package:alatoo/components/app_colors.dart';
import 'package:alatoo/components/app_text_style.dart';
import 'package:alatoo/components/app_texts.dart';
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
      backgroundColor: AppColors.grey2,
      appBar: AppBar(
        title: Center(
          child: Text(
            AppTexts.hotel,
            style: AppTextStyles.makadi,
          ),
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppColors.white,
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
                      color: AppColors.star,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.yellow,
                            ),
                            Text(
                              AppTexts.great,
                              style: AppTextStyles.greatStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    AppTexts.makadi,
                    style: AppTextStyles.makadi,
                  ),
                  SizedBox(width: 10),
                  const Text(
                    AppTexts.egipt,
                    style: AppTextStyles.egipt,
                  ),
                  const Row(
                    children: [
                      Text(AppTexts.tsena, style: AppTextStyles.tsenaText),
                      SizedBox(width: 10),
                      Text(
                        AppTexts.tur,
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
              height: 10,
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
                        child:
                            Text(AppTexts.obOtele, style: AppTextStyles.makadi),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration:
                                const BoxDecoration(color: AppColors.grey2),
                            width: 140,
                            height: 30,
                            child: Center(
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  AppTexts.vsevklycheno,
                                  style: AppTextStyles.udobno,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            AppTexts.wifi,
                            style: AppTextStyles.udobno,
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
                                  AppTexts.aiport,
                                  style: AppTextStyles.udobno,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  AppTexts.beech,
                                  style: AppTextStyles.udobno,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(AppTexts.vip,
                                    style: AppTextStyles.information),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: AppColors.grey1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: 55,
                          child: ContainerButtom(
                              image: SvgPicture.asset("assets/emoji_happy.svg"),
                              text: AppTexts.udobstva),
                        ),
                      ),
                      const Divider(
                        color: AppColors.seryi,
                        indent: 45,
                        endIndent: 45,
                      ),
                      ContainerButtom(
                        image: SvgPicture.asset("assets/tick.svg"),
                        text: AppTexts.vklycheno,
                      ),
                      const Divider(
                        color: AppColors.seryi,
                        indent: 45,
                        endIndent: 45,
                      ),
                      ContainerButtom(
                        image: SvgPicture.asset("assets/close.svg"),
                        text: AppTexts.neVklycheno,
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
                    buttonText: AppTexts.vybor,
                    style: AppTextStyles.kvyboru),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerButtom extends StatelessWidget {
  const ContainerButtom({
    super.key,
    required this.image,
    required this.text,
  });
  final SvgPicture image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40, top: 10),
          child: image,
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const Text(AppTexts.need, style: AppTextStyles.udobno),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
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
            backgroundColor: AppColors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            minimumSize: const Size.fromHeight(48)),
        child: Text(
          buttonText,
          style: const TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
