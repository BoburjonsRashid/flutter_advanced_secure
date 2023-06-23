import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/service/log_service..dart';
import 'package:flutter_advanced/service/prefs_service.dart';

import '../model/user_model.dart';
import '../service/secure_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

   void initState() {

    super.initState();
    SecureService.storeApiKey("1234567890123456789012345678901234567890");
    SecureService. loadApiKey ().then((value) => {
      LogService.w(value.toString()),
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.all(30),
        child:Center(child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(


                child: const Text("str_packages",style: TextStyle(fontSize: 20),).tr()),
const SizedBox(height: 400
  ,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: MaterialButton(
                      color: Colors.red,
                      onPressed: () {context.setLocale(const Locale('en', 'US'));

                     },
                      child: const Text("english")),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                      color: Colors.orange,
                      onPressed: () {context.setLocale(const Locale('ja', 'JA'));

                     },
                      child: const Text("Japanese")),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                      color: Colors.green,
                      onPressed: () {context.setLocale(const Locale('ko','KO'));

                     },
                      child: const Text("Korean")),

                ),

              ],
            )
          ],
        ),
      ),
      ));
  }
}
