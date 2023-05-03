import'package:flutter/material.dart';
import 'package:playstor/androidstore/provider/store_provider.dart';
import 'package:playstor/androidstore/view/installa_screen.dart';
import 'package:playstor/androidstore/view/play_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlayStoreProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
          '/':(context) =>PlayScreen(),
          'ins':(context) => InstalledScreen()
        }
      ),
    )
  );
}