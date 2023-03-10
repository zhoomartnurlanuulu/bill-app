// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:billapp/configs/routers/router.gr.dart';
import 'package:billapp/features/bill/presentation/pages/bill_screen/widgets/drop_down_widget.dart';
import 'package:billapp/features/bill/presentation/pages/bill_screen/widgets/global_pisha.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tesseract_ocr/android_ios.dart';

class BillScreen extends StatefulWidget {
  BillScreen({super.key, required this.path});
  String path;
  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  bool isBusy = true;
  bool isGeneral = true;
  bool isGeneral1 = true;
  bool isGeneral2 = true;
  bool isGeneral3 = true;
  bool isGeneral4 = true;
  bool isGeneral5 = true;
  bool isGeneral6 = true;
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController priceController1 = TextEditingController();
  final TextEditingController priceController2 = TextEditingController();
  final TextEditingController priceController3 = TextEditingController();
  final TextEditingController priceController4 = TextEditingController();
  final TextEditingController priceController5 = TextEditingController();
  final TextEditingController priceController6 = TextEditingController();
  String _recognizedText = '';

  @override
  void initState() {
    super.initState();

    processImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        primary: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, bottom: 15, top: 15),
          child: isBusy == true
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Column(
                  children: [
                    const SizedBox(
                      height: 33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          '??????????:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 113,
                        ),
                        Text(
                          '????????:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '??????????\n ???????????',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '??????????\n????????????????',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: controller,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: priceController,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral = !isGeneral;
                            });
                          },
                          isActive: isGeneral,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: controller1,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(6))),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: priceController1,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral1 = !isGeneral1;
                            });
                          },
                          isActive: isGeneral1,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral1),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: controller2,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: priceController2,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral2 = !isGeneral2;
                            });
                          },
                          isActive: isGeneral2,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral2),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: controller3,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: priceController3,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral3 = !isGeneral3;
                            });
                          },
                          isActive: isGeneral3,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral3),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: controller4,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: priceController4,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral4 = !isGeneral4;
                            });
                          },
                          isActive: isGeneral4,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral4),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: controller5,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            controller: priceController5,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral5 = !isGeneral5;
                            });
                          },
                          isActive: isGeneral5,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral5),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 31,
                          width: 155,
                          child: TextFormField(
                            controller: controller6,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 70,
                          height: 31,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: priceController6,
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GlobalPisha(
                          onTap: () {
                            setState(() {
                              isGeneral6 = !isGeneral6;
                            });
                          },
                          isActive: isGeneral6,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropDownWidget(isActive: isGeneral6),
                      ],
                    ),
                    const SizedBox(height: 34),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            const Text(
                              '???????????????? ?????????? \n?????? ?????????? %:',
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 125,
                              height: 41,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 41,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color(0xff0038FF),
                        ),
                        onPressed: () {
                          context.router.push(const MainScreenRoute());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '??????????',
                              style: TextStyle(fontSize: 32),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 32,
                            ),
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

  /// process Image ?????? ?? ???????? text recognizer ???????????????? ???????????????????????? ??????????????????
  /// if you want recognize cyrillic, Flutter_tesseract_ocr its good choise

  void processImage() async {
    _recognizedText =
        await FlutterTesseractOcr.extractText(widget.path, language: 'rus');
    controller.text = _recognizedText;
    controller1.text = _recognizedText;
    controller2.text = _recognizedText;
    controller3.text = _recognizedText;
    controller4.text = _recognizedText;
    controller5.text = _recognizedText;
    controller6.text = _recognizedText;
    priceController.text = _recognizedText;
    priceController1.text = _recognizedText;
    priceController2.text = _recognizedText;
    priceController3.text = _recognizedText;
    priceController4.text = _recognizedText;
    priceController5.text = _recognizedText;
    priceController6.text = _recognizedText;

    setState(() {
      isBusy = true;
    });
    setState(() {
      isBusy = false;
    });
  }
}
