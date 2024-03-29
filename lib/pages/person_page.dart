import 'package:alatoo/config/app_colors.dart';
import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/model/turist_number_model.dart';
import 'package:alatoo/model/reservation_model.dart';
import 'package:alatoo/model/tourists_model.dart';
import 'package:alatoo/pages/payment_page.dart';
import 'package:alatoo/service/api_const.dart';
import 'package:alatoo/widgets/custom_buttom.dart';
import 'package:alatoo/widgets/text_form_widger.dart';
import 'package:alatoo/widgets/tourist_card.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  ReservationModel? reservation;
  bool isLoading = false;
  final List<TouristsEntity> tourists = [
    TouristsEntity(
      firstName: TextEditingController(),
      lastName: TextEditingController(),
      birthDay: TextEditingController(),
      citizenship: TextEditingController(),
      passportNumber: TextEditingController(),
      passportValidityPeriod: TextEditingController(),
    ),
  ];

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    phoneMaskFormatter.clear();
    for (var tourist in tourists) {
      tourist.firstName.dispose();
      tourist.lastName.dispose();
      tourist.birthDay.dispose();
      tourist.citizenship.dispose();
      tourist.passportNumber.dispose();
      tourist.passportValidityPeriod.dispose();
    }
    super.dispose();
  }

  ReservationModel? registermodel;
  @override
  void initState() {
    super.initState();
    getData2();
  }

  void getData2() async {
    registermodel = await ApiService().getUsers2();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text(
          AppTexts.bron,
          style: AppTextStyles.otelStyle,
        ),
        centerTitle: true,
      ),
      body: registermodel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: 149,
                                height: 29,
                                decoration: ShapeDecoration(
                                  color: AppColors.brown,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: AppColors.yellow),
                                    const SizedBox(width: 2),
                                    Text(
                                      registermodel!.ratingName!,
                                      style: AppTextStyles.greatStyle,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                registermodel!.hotelAdress!,
                                style: AppTextStyles.makadi,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(registermodel!.hotelAdress!,
                                  style: AppTextStyles.egipt),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 10, right: 5),
                            child: Table(
                              columnWidths: const <int, TableColumnWidth>{
                                0: FixedColumnWidth(140),
                                1: FlexColumnWidth(),
                              },
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.top,
                              children: <TableRow>[
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.vylet,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(registermodel!.departure!,
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.city,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(
                                          registermodel!.arrivalCountry!,
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.daty,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(
                                          '${registermodel!.tourDateStart} – ${registermodel!.tourDateStop}',
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.night,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(
                                          '${registermodel!.numberOfNights}',
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.hotel,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(registermodel!.hotelName!,
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.number,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(registermodel!.room!,
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(AppTexts.food,
                                          style: AppTextStyles.turStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Text(registermodel!.nutrition!,
                                          style: AppTextStyles.information),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(AppTexts.information,
                                  style: AppTextStyles.makadi),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormFieldWidget(
                                keyboardType: TextInputType.number,
                                controller: phoneController,
                                inputFormatters: [phoneMaskFormatter],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Заполните поле';
                                  } else {
                                    return null;
                                  }
                                },
                                labelText: 'Number',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormFieldWidget(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Заполните поле';
                                  } else {
                                    return null;
                                  }
                                },
                                labelText: 'Email',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < tourists.length; i++)
                            Column(
                              children: [
                                TuoristCardWidget(
                                  touristEntity: tourists[i],
                                  title: parseNumberToString(i + 1),
                                ),
                                if (i + 1 < tourists.length)
                                  const SizedBox(height: 8),
                              ],
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tourists.add(
                              TouristsEntity(
                                firstName: TextEditingController(),
                                lastName: TextEditingController(),
                                birthDay: TextEditingController(),
                                citizenship: TextEditingController(),
                                passportNumber: TextEditingController(),
                                passportValidityPeriod: TextEditingController(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(16, 13, 16, 13),
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(AppTexts.addtourist,
                                  style: AppTextStyles.makadi),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: AppColors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        // width: 375,
                        // height: 156,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(AppTexts.tur1,
                                      style: AppTextStyles.turStyle),
                                  Text("${registermodel!.tourPrice} ₽",
                                      style: AppTextStyles.information),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(AppTexts.sbor,
                                      style: AppTextStyles.turStyle),
                                  Text("${registermodel!.fuelCharge} ₽",
                                      style: AppTextStyles.information),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(AppTexts.serviceSbor,
                                      style: AppTextStyles.turStyle),
                                  Text(
                                    "${registermodel!.serviceCharge} ₽",
                                    style: AppTextStyles.information,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(AppTexts.oplata,
                                      style: AppTextStyles.turStyle),
                                  Text(
                                      "${(registermodel!.tourPrice! + registermodel!.fuelCharge! + registermodel!.serviceCharge!)} ₽",
                                      style: AppTextStyles.onomere),
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
                        style: AppTextStyles.kvyboru,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PaymentPage(),
                              ),
                            );
                          }
                        },
                        buttonText:
                            'К оплате ${registermodel!.tourPrice! + registermodel!.fuelCharge! + registermodel!.serviceCharge!} ',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
