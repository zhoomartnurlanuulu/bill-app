// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:billapp/configs/extension/context_extension.dart';
import 'package:billapp/configs/routers/router.gr.dart';
import 'package:flutter/material.dart';

class HelperPage extends StatefulWidget {
  const HelperPage({super.key});

  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<HelperPage> {
  final List<TextEditingController> _controllers = [];
  final List<TextField> _fields = [];
  final _controller = TextEditingController();

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isService = ValueNotifier<bool>(false);

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 36),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Количество человек:',
                          style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Card(
                          elevation: 0,
                          color: Colors.grey[200],
                          child: Center(
                              child: Text(
                            '${_controllers.length}',
                            style: const TextStyle(fontSize: 20),
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      _addField(),
                      const SizedBox(
                        width: 5,
                      ),
                      _removeField()
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: context.height * 0.4,
                    child: ListView.builder(
                      itemCount: _fields.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 6,
                            ),
                            SizedBox(
                              height: 34,
                              child: _fields[index],
                            ),
                            const SizedBox(
                              height: 11,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 94,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Обслуживание:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ValueListenableBuilder(
                    valueListenable: isService,
                    builder: (context, value, child) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 85,
                                decoration: BoxDecoration(
                                    color: isService.value == true
                                        ? const Color(0xff0038FF)
                                        : Colors.grey[200],
                                    borderRadius: BorderRadius.circular(9)),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Switch(
                                    activeTrackColor: const Color(0xff0038FF),
                                    activeColor: Colors.white,
                                    inactiveTrackColor: Colors.grey[200],
                                    value: isService.value,
                                    onChanged: (t) {
                                      isService.value = !isService.value;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          child!,
                          Visibility(
                            visible: isService.value,
                            replacement: Row(
                              children: const [
                                SizedBox(
                                  child: Text(
                                    'Нет % за обслуживание',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '% Обслуживания:',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 119,
                                      child: TextField(
                                        controller: _controller,
                                        decoration: InputDecoration(
                                            fillColor: Colors.grey[200],
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(6))),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    child: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 41,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff0038FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            onPressed: () async {
                              String text = _controllers
                                  .where((element) => element.text != "")
                                  .fold(
                                      "",
                                      (acc, element) =>
                                          acc += '${element.text}\n');

                              context.router.push(ResultScreenRoute(
                                controller: _controller,
                                controllers: text,
                              ));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'РАССЧИТАТЬ',
                                  style: TextStyle(fontSize: 32),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.calculate_outlined, size: 32),
                              ],
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )),
    );
  }

  /// Кнопка для добавление полей
  Widget _addField() {
    return SizedBox(
      height: 33,
      width: 33,
      child: FloatingActionButton(
        heroTag: 'add_button',
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        backgroundColor: const Color(0xFF00FFB2),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          final controller = TextEditingController();
          final field = TextField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: "Имя",
            ),
          );

          setState(() {
            if (_controllers.length == 30) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Максимальное кол-во полей'),
                  action: SnackBarAction(
                      label: 'OK',
                      textColor: Colors.grey,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      }),
                ),
              );
            } else {
              _controllers.add(controller);

              _fields.add(field);
            }
          });
        },
      ),
    );
  }

  Widget _removeField() {
    return SizedBox(
      height: 33,
      width: 33,
      child: FloatingActionButton(
        heroTag: 'remove_button',
        elevation: 3,
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: const Icon(
          Icons.remove,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            if (_controllers.isEmpty) {
              _controllers.length;
            } else {
              _controllers.removeLast();
              _fields.removeLast();
            }
          });
        },
      ),
    );
  }
}
