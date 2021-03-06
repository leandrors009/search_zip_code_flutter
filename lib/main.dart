import 'package:flutter/material.dart';
import 'screen/screen_zip_code.dart' as homepage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Search Zip Code',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: homepage.Home()
        // const MyHomePage(
        // title: 'Search Zip Code',
        //),
        );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final textFieldController = TextEditingController();

//   @override
//   void dispose() {
//     textFieldController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         color: Colors.blue[50],
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             RichText(
//               text: TextSpan(
//                 style: TextStyle(color: Colors.black, fontSize: 30),
//                 text: ''' Digite um CEP para consultar
//                 o endereço''',
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               textDirection: TextDirection.ltr,
//               textAlign: TextAlign.center,
//               maxLength: 8,
//               style: TextStyle(color: Colors.black, fontSize: 20),
//               controller: textFieldController,
//             ),
//             SizedBox(
//               height: 50,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           api.searchZipCode(textFieldController.text).then((value) {
//             showDialog(
//               context: context,
//               builder: (context) {
//                 return AlertDialog(
//                   contentPadding: EdgeInsets.zero,
//                   backgroundColor: Colors.white,
//                 );
//               },
//             );
//           });
//         },
//         tooltip: 'Search',
//         child: const Icon(Icons.search),
//       ),
//     );
//   }
// }
