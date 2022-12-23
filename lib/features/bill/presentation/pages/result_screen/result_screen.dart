import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.controller, required this.controllers});
  final TextEditingController controller;
  final String controllers;
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        primary: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.grey[200]),
                child: Row(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.controllers,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
