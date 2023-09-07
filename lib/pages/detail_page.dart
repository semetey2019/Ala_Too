import 'package:alatoo/config/app_colors.dart';
import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/model/apartament_model.dart';
import 'package:alatoo/pages/payment_page.dart';

import 'package:alatoo/pages/person_page.dart';
import 'package:alatoo/service/api_const.dart';
import 'package:alatoo/widgets/custom_buttom.dart';
import 'package:alatoo/widgets/slider.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

// class DetailPegeView extends StatefulWidget {
//   final String title;
//   const DetailPegeView({super.key, required this.title});

//   @override
//   State<DetailPegeView> createState() => _DetailPegeViewState();
// }

// class _DetailPegeViewState extends State<DetailPegeView> {
//   List<RoomModel>? rooms=[];
//   int _currentPosition = 0;

//   void getData() async {
//     rooms = await ApiService().getRooms();
//     setState(() {});
//   }

//   @override
//   void initState() {
//     getData();

//     super.initState();
//   }

//   String getPrettyCurrPosition() {
//     return (_currentPosition + 1.0).toStringAsPrecision(3);
//   }

//   final decorator = DotsDecorator(
//     activeColor: AppColors.black,
//     size: const Size.square(7.0),
//     activeSize: const Size.square(7.0),
//     activeShape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(25.0),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       backgroundColor: AppColors.grey2,
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             widget.title,
//             style: AppTextStyles.makadi,
//           ),
//         ),
//         backgroundColor: AppColors.white,
//       ),
//       body:SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [...rooms.map(
//               (room) =>
//                   Container(
//                     width: double.infinity,
//                     height: 539,
//                     color: AppColors.white,
//                     padding:  EdgeInsets.symmetric(horizontal: 16),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                          SliderWidget(urls: rooms!.imageUrls),
//                           // "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
//                           // "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
//                           // "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
//                 ]),
//                        SizedBox(height: 16),
//                         Text(
//                         rooms!.name.toString(),
//                           style: AppTextStyles.makadi,
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           children: [
//                             Container(
//                               decoration:
//                                   const BoxDecoration(color: Color(0xffFBFBFC)),
//                               width: 140,
//                               height: 30,
//                               child: Center(
//                                 child: InkWell(
//                                   onTap: () {},
//                                   child: const Text(
//                                     AppTexts.vklycheno,
//                                     style: AppTextStyles.udobno,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             Container(
//                               decoration:
//                                   const BoxDecoration(color: Color(0xffFBFBFC)),
//                               width: 140,
//                               height: 30,
//                               child: Center(
//                                 child: InkWell(
//                                   onTap: () {},
//                                   child: const Text(
//                                     AppTexts.kondic,
//                                     style: AppTextStyles.udobno,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           height: 35,
//                           width: 192,
//                           decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(5)),
//                             color: Color.fromRGBO(13, 114, 255, 0.10),
//                           ),
//                           child: const Row(
//                             children: [
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     AppTexts.onomere,
//                                     style: AppTextStyles.onomere,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Row(
//                           children: [
//                             Text(AppTexts.tsena1,
//                                 style: AppTextStyles.tsenaText),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               AppTexts.tur2,
//                               style: AppTextStyles.udobno,
//                             ),
//                           ],
//                         ),
//                         MyCustomButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: ((context) => PersonPage())));
//                           },
//                           borderRadius:
//                               20, // Здесь можно настроить радиус границ
//                           buttonText: AppTexts.vybor1,
//                           style: AppTextStyles.kvyboru,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 539,
//                     color: AppColors.white,
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SliderWidget(urls: [
//                           "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
//                           "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
//                           "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
//                         ]),
//                         const SizedBox(height: 16),
//                         const Text(
//                           AppTexts.garden,
//                           style: AppTextStyles.makadi,
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           children: [
//                             Container(
//                               decoration:
//                                   const BoxDecoration(color: Color(0xffFBFBFC)),
//                               width: 140,
//                               height: 30,
//                               child: Center(
//                                 child: InkWell(
//                                   onTap: () {},
//                                   child: const Text(
//                                     AppTexts.vklycheno,
//                                     style: AppTextStyles.udobno,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             Container(
//                               decoration:
//                                   const BoxDecoration(color: Color(0xffFBFBFC)),
//                               width: 140,
//                               height: 30,
//                               child: Center(
//                                 child: InkWell(
//                                   onTap: () {},
//                                   child: const Text(
//                                     AppTexts.kondic,
//                                     style: AppTextStyles.udobno,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         Container(
//                           height: 35,
//                           width: 192,
//                           decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(5)),
//                             color: Color.fromRGBO(13, 114, 255, 0.10),
//                           ),
//                           child: const Row(
//                             children: [
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     AppTexts.onomere,
//                                     style: AppTextStyles.onomere,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Row(
//                           children: [
//                             Text(AppTexts.tsena1,
//                                 style: AppTextStyles.tsenaText),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               AppTexts.tur2,
//                               style: AppTextStyles.udobno,
//                             ),
//                           ],
//                         ),
//                         MyCustomButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: ((context) => PersonPage())));
//                           },
//                           borderRadius: 20,
//                           buttonText: AppTexts.vybor1,
//                           style: AppTextStyles.kvyboru,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
class NumberPage extends StatefulWidget {
  final String title;
  const NumberPage({super.key, required this.title});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
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
      backgroundColor: AppColors.grey1,
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
                      padding: const EdgeInsets.only(left: 20),
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
