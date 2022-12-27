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
                          'Блюдо:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 113,
                        ),
                        Text(
                          'Цена:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Общее\n блюдо?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Номер\nЧеловека',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            height: 31,
                            width: 155,
                            child: Center(
                                child: Text(_recognizedText.substring(0, 10)))),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(width: 70, height: 31, child: Text('')),
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
                        const SizedBox(height: 31, width: 155, child: Text('')),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(width: 70, height: 31, child: Text('')),
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
                        const SizedBox(height: 31, width: 155, child: Text('')),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(width: 70, height: 31, child: Text('')),
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
                        const SizedBox(height: 31, width: 155, child: Text('')),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(
                            width: 70, height: 31, child: Text('data')),
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
                        const SizedBox(height: 31, width: 155, child: Text('')),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(width: 70, height: 31, child: Text('')),
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
                        const SizedBox(
                            height: 31, width: 155, child: Text('data')),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(width: 70, height: 31, child: Text('')),
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
                        const SizedBox(
                            height: 31, width: 155, child: Text('data')),
                        const SizedBox(
                          width: 16,
                        ),
                        const SizedBox(width: 70, height: 31, child: Text('')),
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
                              'Итоговая сумма \nбез учета %:',
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
                              'ДАЛЕЕ',
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

  /// process Image это и есть text recognizer способен распозновать кириллицу
  /// if you want recognize cyrillic, Flutter_tesseract_ocr its good choise

  void processImage() async {
    _recognizedText =
        await FlutterTesseractOcr.extractText(widget.path, language: 'rus');

    setState(() {
      isBusy = true;
    });
    setState(() {
      isBusy = false;
    });
  }
}
