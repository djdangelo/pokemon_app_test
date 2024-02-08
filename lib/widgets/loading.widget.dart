import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double appheight = MediaQuery.of(context).size.height;
    double appwith = MediaQuery.of(context).size.width;
    return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 0,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: appheight * 0.05,
                    child: Image.asset('assets/images/loading.gif'),
                  ),
                  SizedBox(
                    height: appheight * 0.02,
                  ),
                  Text(
                    'Loading...',
                    style: TextStyle(fontSize: appheight * 0.02),
                  )
                ],
              ),
            )));
  }
}
