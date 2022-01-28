import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            // This will be applied to the "back" icon
            iconTheme: IconThemeData(color: Colors.red),
            // This will be applied to the action icon buttons that locates on the right side
            actionsIconTheme: IconThemeData(color: Colors.amber),
            centerTitle: false,
            elevation: 15,
            titleTextStyle: TextStyle(color: Colors.green),
          )
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyCheckBox();
  }

}

class MyCheckBox extends State<HomePage> {

  bool smsIsChecked = false;
  bool emailIsChecked = false;
  bool twitterIsChecked = false;
  bool facebookIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('                     Communications Page', style: TextStyle(fontSize: 18),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              'How would you like to communicate?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: smsIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          smsIsChecked = value!;
                        });
                      }
                  ),
                  const Text(
                    'SMS',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: emailIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          emailIsChecked = value!;
                        });
                      }
                  ),
                  const Text (
                    'Email',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: twitterIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          twitterIsChecked = value!;
                        });
                      }
                  ),
                  const Text (
                    'Twitter',
                    style: TextStyle(fontSize: 10),
                  ),
                  Checkbox(
                      value: facebookIsChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          facebookIsChecked = value!;
                        });
                      }
                  ),
                  const Text (
                    'Facebook',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        )
      )
  );
}}
