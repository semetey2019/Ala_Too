import 'package:alatoo/components/app_colors.dart';
import 'package:alatoo/components/app_text_style.dart';
import 'package:alatoo/components/app_texts.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

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
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 435,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
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
                    const Text(
                      AppTexts.egipt,
                      style: AppTextStyles.egipt,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Table(
                    children: [
                      const TableRow(
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
                      const TableRow(children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                      const TableRow(
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
                      const TableRow(children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                      const TableRow(
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
                      const TableRow(children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                      const TableRow(
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
                      const TableRow(children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                      const TableRow(
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
                      const TableRow(children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                      const TableRow(
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
                      const TableRow(children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                      const TableRow(
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
                      const TableRow(children: [
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        AppTexts.information,
                        style: AppTextStyles.makadi,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.10,
                              fontSize: 17,
                            ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 15,
                          ),
                          labelStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    height: 0.9,
                                  ),
                          labelText: AppTexts.number1,
                          filled: true,
                          fillColor: AppColors.grey2,
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.10,
                              fontSize: 17,
                            ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 15,
                          ),
                          labelStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.grey,
                                    fontSize: 17,
                                    height: 0.9,
                                  ),
                          labelText: "Почта",
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(AppTexts.check,
                          style: AppTextStyles.neobxodimoStyle)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
