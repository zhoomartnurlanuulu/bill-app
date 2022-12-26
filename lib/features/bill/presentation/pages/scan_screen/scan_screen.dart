import 'package:auto_route/auto_route.dart';
import 'package:billapp/configs/routers/router.gr.dart';
import 'package:billapp/features/bill/presentation/pages/scan_screen/widgets/image_crooper_class.dart';
import 'package:billapp/features/bill/presentation/pages/scan_screen/widgets/image_picker_modal.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    String str = ' ';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        primary: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xff0038FF),
                  borderRadius: BorderRadius.circular(35)),
              height: 147,
              width: 149,
              child: IconButton(
                onPressed: () {
                  pickImage(source: ImageSource.camera).then((value) {
                    if (value != '') {
                      imageCropperView(value, context).then((value) {
                        context.router.push(
                          BillScreenRoute(path: value),
                        );
                      });
                    }
                  });
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 77,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0038FF),
                  foregroundColor: Colors.transparent),
              child: const Text('Считать без сканерa',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                context.router.push(
                  const BillScreenWithOutScanRoute(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
