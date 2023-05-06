import 'package:flutter/material.dart';

class shopsPageWidget extends StatelessWidget {
  const shopsPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ24yhMfr14IJ2PmZ9dFI2_f8ywVEYBrFulA&usqp=CAU',
                      height: 100,
                      width: 180,
                    ),
                    padding: const EdgeInsets.all(10),
                  ),
                  Container(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwI2sqSW9R3-vgdb2IrrEAtZ4GOIqTUSuUaA&usqp=CAU',
                      height: 100,
                      width: 180,
                    ),
                    padding: const EdgeInsets.all(10),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
