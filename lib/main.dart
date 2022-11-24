import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_themes/switch_theme_view_model.dart';
import 'package:switch_themes/theme_notifier_view_model.dart';

void main() {
  return runApp(
      ChangeNotifierProvider<ThemeNotifierViewModel>(
    create: (_) => ThemeNotifierViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) =>  SwitchThemeViewModel()),
      ],
      child: Consumer<ThemeNotifierViewModel>(
          builder: (context, theme, child) =>
              MaterialApp(
            theme: theme.getTheme(),
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Hybrid Theme'),
              ),
              body: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () => {
                            print('Set Light Theme'),
                            theme.setLightMode(),
                          },
                          child: Text('Set Light Theme'),
                        ),
                      ),
                      Container(
                        child:ElevatedButton(
                          onPressed: () => {
                            print('Set Dark theme'),
                            theme.setDarkMode(),
                          },
                          child: Text('Set Dark theme'),
                        ),
                      ),

                    ],
                  ),
                 const  HomeIcons()
                ],
              ),
            ),
          )),
    );
  }
}


class HomeIcons extends StatelessWidget {
  const HomeIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SwitchThemeViewModel switchThemeNotifierViewModel = context.watch<SwitchThemeViewModel>();
    return Column(
      children: [
        Icon(Icons.home , size: 50, color: switchThemeNotifierViewModel.theme.nuvvuBlack,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuBlue,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuDeepGreen,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuLightGreen,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuteagreen,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuWhite,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuGrey,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvuChatbackground,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.SplashBackgroundSolidColor,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.statusBarColor,),
        Icon(Icons.home , size: 50,color: switchThemeNotifierViewModel.theme.nuvvugreen,),
        Transform.scale(
            scale: 1.5,
            child: Switch(
              onChanged: (value){
                if(value == true){
                  switchThemeNotifierViewModel.setToWhatsAppTheme();
                }else{
                  switchThemeNotifierViewModel.setToMessengerTheme();
                }

              },
              value: switchThemeNotifierViewModel.isWhatsAppThemeEnabled ,
              activeColor: switchThemeNotifierViewModel.theme.SplashBackgroundSolidColor,
              activeTrackColor: Colors.white,
              inactiveThumbColor: switchThemeNotifierViewModel.theme.statusBarColor,
              inactiveTrackColor: Colors.white ,
            )
        )

      ],
    );
  }
}








