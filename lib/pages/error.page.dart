import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app_test/controllers/home.controller.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({super.key});
  HomeController homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    double appheight = MediaQuery.of(context).size.height;
    double appwith = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
            bottom: 0, left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: appheight * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Something went wrong',
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.6),
                          fontSize: appheight * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: appheight * 0.03,
                    ),
                    Text(
                      'please try again later...',
                      style: TextStyle(
                        color: Colors.black87.withOpacity(0.6),
                        fontSize: appheight * 0.02,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                  minWidth: appwith * 0.9,
                  color: const Color.fromARGB(255, 217, 66, 86),
                  height: 50,
                  elevation: 0,
                  shape: const StadiumBorder(),
                  onPressed: () {
                    homeController.getPokemons(10, 0);
                    Get.offAllNamed('/home');
                  },
                  child: const Text(
                    'Try Again Now',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Center(
              child: SizedBox(
                height: appheight * 0.3,
                child: Image.asset('assets/images/error.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
