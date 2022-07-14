import 'package:flutter/material.dart';

class FutureScreenView extends StatelessWidget {
  const FutureScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("future"),
      ),
      body: Center(
        child: FutureBuilder(
            future: waitForFiveSec(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return LinearProgressIndicator();
                //Text("waiting");

                //atwanit animation yan imagesh
              }
              //if(snapshot.data == true){}agar laxwarawa naman nusibu.
              return Text("Hello", style: TextStyle(fontSize: 25));
            }),
      ),
    );
  }
}

Future waitForFiveSec() async {
  return await Future.delayed(Duration(seconds: 5)).then((value) => true);
}                  //akre bgore kay datakan garanawa  //agar am thena lera nanusin dabe lasarawa bnusre.
