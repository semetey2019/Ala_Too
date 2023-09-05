import 'package:alatoo/config/app_colors.dart';
import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';

import 'package:alatoo/pages/payment_page.dart';
import 'package:alatoo/widgets/custom_buttom.dart';
import 'package:alatoo/widgets/text_form_widger.dart';
import 'package:alatoo/widgets/tourist_card.dart';

import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({
    super.key,
  });

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey2,
      appBar: AppBar(
        title: const Center(
          child: Text(
            AppTexts.bron,
            style: AppTextStyles.makadi,
          ),
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              width: 435,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, bottom: 8),
                    child: Container(
                      width: 150,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: AppColors.star,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.yellow,
                          ),
                          Text(
                            AppTexts.great,
                            style: AppTextStyles.udostva1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    AppTexts.makadi,
                    style: AppTextStyles.makadi,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppTexts.egipt,
                    style: AppTextStyles.egipt,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.vylet,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.sp,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.city,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.egipt1,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.daty,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.daty1,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.night,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.night1,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.hotel,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.makadi,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.number,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.garden,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.food,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.vklycheno,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              width: double.infinity,
              height: 232,
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.information,
                      style: AppTextStyles.makadi,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormWidget(
                      title: AppTexts.number,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormWidget(
                      title: AppTexts.email,
                    ),
                    SizedBox(height: 10),
                    Text(AppTexts.check, style: AppTextStyles.neobxodimoStyle)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const TouristCard(
              text: AppTexts.tourist,
            ),
            const TouristCard(
              text: AppTexts.tourist2,
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    AppTexts.addtourist,
                    style: AppTextStyles.makadi,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.tur1,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.tsena1,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.sbor,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.tsena3,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.serviceSbor,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.tsena4,
                            style: AppTextStyles.information,
                          ),
                        ),
                      ],
                    ),
                    TableRow(children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                          child: Text(
                            AppTexts.oplata,
                            style: AppTextStyles.turStyle,
                          ),
                        ),
                        TableCell(
                          child: Text(
                            AppTexts.tsena5,
                            style: AppTextStyles.onomere,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyCustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const PaymentPage())));
                },
                borderRadius: 20, // Здесь можно настроить радиус границ
                buttonText: AppTexts.vybor,
                style: AppTextStyles.kvyboru),
          ],
        ),
      ),
    );
  }
}
