import 'package:alatoo/config/app_colors.dart';
import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/model/hotel_model.dart';

import 'package:alatoo/pages/detail_page.dart';
import 'package:alatoo/service/api_const.dart';
import 'package:alatoo/widgets/conteiner_bottom.dart';
import 'package:alatoo/widgets/custom_buttom.dart';
import 'package:alatoo/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  HotelModel? _hotelModel;

  // ignore: prefer_final_fields
  int _currentPosition = 0;

  void getData() async {
    _hotelModel = await ApiService().getUsers();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
  bool isVisible = false;
  bool isVisibles = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey2,
      appBar: AppBar(
        title: const Center(
          child: Text(
            AppTexts.hotel,
            style: AppTextStyles.makadi,
          ),
        ),
        backgroundColor: AppColors.white,
      ),
      body: _hotelModel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: AppColors.yellow,
                                  ),
                                  Text(
                                    _hotelModel!.ratingName.toString(),
                                    style: AppTextStyles.greatStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          _hotelModel!.name.toString(),
                          style: AppTextStyles.makadi,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          _hotelModel!.adress.toString(),
                          style: AppTextStyles.egipt,
                        ),
                        Row(
                          children: [
                            Text(_hotelModel!.minimalPrice.toString(),
                                style: AppTextStyles.tsenaText),
                            const SizedBox(width: 10),
                            Text(
                              _hotelModel!.priceForIt.toString(),
                              style: const TextStyle(
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
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(AppTexts.obOtele,
                                  style: AppTextStyles.makadi),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: [
                                  ..._hotelModel!.aboutTheHotel!.peculiarities!
                                      .map(
                                    (e) => Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: AppColors.grey1,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Text(e.toString(),
                                          style: AppTextStyles.turStyle),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                            _hotelModel!
                                                .aboutTheHotel!.description!
                                                .toString(),
                                            style: AppTextStyles.information),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: AppColors.grey3,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 16),
                                    child: ContainerButtom(
                                      image: SvgPicture.asset(
                                          "assets/emoji_happy.svg"),
                                      text: AppTexts.udobstva,
                                      color: AppColors.grey3,
                                      width: const Size(430, 55),
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: AppColors.seryi,
                                indent: 45,
                                endIndent: 45,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 16),
                                child: ContainerButtom(
                                  image: SvgPicture.asset("assets/tick.svg"),
                                  text: AppTexts.vklycheno,
                                  color: AppColors.grey3,
                                  width: const Size(380, 55),
                                ),
                              ),
                              const Divider(
                                color: AppColors.seryi,
                                indent: 45,
                                endIndent: 45,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 16, bottom: 25),
                                child: ContainerButtom(
                                  image: SvgPicture.asset("assets/close.svg"),
                                  text: AppTexts.neVklycheno,
                                  color: AppColors.grey3,
                                  width: const Size(380, 55),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyCustomButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => DetailPage(
                                      title: _hotelModel!.name.toString(),
                                    )),
                              ),
                            );
                          },
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
