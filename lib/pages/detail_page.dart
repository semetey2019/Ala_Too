import 'package:alatoo/config/app_colors.dart';
import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/model/room_model.dart';
import 'package:alatoo/pages/person_page.dart';
import 'package:alatoo/service/api_const.dart';
import 'package:alatoo/widgets/custom_buttom.dart';
import 'package:alatoo/widgets/slider.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String title;
  const DetailPage({super.key, required this.title});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<RoomModel>? rooms = [];

  @override
  void initState() {
    super.initState();
    getData1();
  }

  void getData1() async {
    rooms = await ApiService().getApartament();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey2,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: Text(
          widget.title,
          style: AppTextStyles.otelStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...rooms!.map(
              (room) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 10, right: 16),
                      child: SliderWidget(urls: room.imageUrls!),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(room.name!, style: AppTextStyles.makadi),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              ...room.peculiarities!.map(
                                (e) => Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: AppColors.grey1,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(e.toString(),
                                      style: AppTextStyles.turStyle),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            child: Container(
                              width: 192,
                              height: 29,
                              decoration: ShapeDecoration(
                                color: const Color(0x190D72FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Center(
                                      child: Text(AppTexts.onomere,
                                          style: AppTextStyles.onomere),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Color(0xFF0D72FF),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text("${room.price} ₽",
                                  style: AppTextStyles.tsenaText),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(room.pricePer.toString(),
                                  style: AppTextStyles.turStyle),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MyCustomButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PersonPage(),
                                ),
                              );
                            },
                            buttonText: AppTexts.vybor,
                            style: AppTextStyles.kvyboru,
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
