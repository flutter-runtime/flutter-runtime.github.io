import 'package:flutter/material.dart';
import 'package:flutter_website/gen/assets.gen.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Runtime 热更新',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        actions: [
          TextButton(
            child: const Text('Github(点个 Star 支持一下呗)'),
            onPressed: () {
              launchUrlString(
                  'https://github.com/flutter-runtime/flutter_runtime_ide');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Assets.images.flutterRuntimeLogo.image(),
                // decoration: BoxDecoration(border: Border.all()),
              ),
              const SizedBox(height: 20),
              const Text(
                'Flutter Runtime',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '使用 AST 技术生成运行时的热更新技术, 低侵入, 版本兼容, 更新无感知, 修复代码可见。',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: () => launchUrlString(
                    'https://github.com/flutter-runtime/flutter_runtime_ide'),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    'Coming Soon',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
