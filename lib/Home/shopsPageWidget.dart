import 'package:appfuture/screens/zaraShop/zaraScreen.dart';
import 'package:flutter/material.dart';

class shopsPageWidget extends StatefulWidget {
  shopsPageWidget({Key? key}) : super(key: key);

  @override
  State<shopsPageWidget> createState() => _shopsPageWidgetState();
}

class _shopsPageWidgetState extends State<shopsPageWidget> {
  String textName = "Zara shop";
  List<String> textlist = ['Zara', 'H & M', 'Amircan Egale'];

  String networkImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ24yhMfr14IJ2PmZ9dFI2_f8ywVEYBrFulA&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        margin: EdgeInsets.all(10),
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(networkImage),
          ),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => zara_screen(),
                ),
              );
            },
            child: Text(
              textName,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ]
        //   child: Container(
        //     // elevation: 10,
        //     // shape:
        //     // RoundedRectangleBorder(
        //     //   borderRadius: BorderRadius.circular(10),
        //     // ),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: <Widget>[
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           // mainAxisSize: MainAxisSize.max,
        //           children: <Widget>[
        //             Row(
        //               children: [
        //                 Image.network(networkImage, width: 110, height: 100),
        //               ],
        //             ),
        //           ],
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: <Widget>[
        //             Padding(
        //               padding: const EdgeInsets.fromLTRB(12.0, 2.0, 2.0, 2.0),
        //               child: Text(
        //                 textName,
        //                 style: TextStyle(fontSize: 20.0),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.fromLTRB(12.0, 6.0, 2.0, 2.0),
        //               child: Text(
        //                 "Info",
        //                 style:
        //                     TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        );
  }
}
