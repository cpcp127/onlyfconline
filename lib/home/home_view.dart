import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlyfconline/home/home_controller.dart';
import 'package:onlyfconline/repository/metadata_repository.dart';
import 'package:onlyfconline/repository/user_repository.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.black,
            body: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              TextField(

              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  //color: Colors.black,
                  height: 150,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          crossAxisCount: 10),
                      scrollDirection: Axis.vertical,
                      itemCount: controller.seasonIdModelList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  
                                  color: Colors.black.withOpacity(0.2),
                                  image: DecorationImage(
                                      image: NetworkImage(controller
                                          .seasonIdModelList[index].seasonImg),
                                      fit: BoxFit.cover)),
                              height: 20,
                            ),
                            Text(
                              controller.seasonIdModelList[index].className
                                  .replaceAll(RegExp(r'\(.*'), '')
                                  .trim(),
                              style: const TextStyle(fontSize: 5),
                            )
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
