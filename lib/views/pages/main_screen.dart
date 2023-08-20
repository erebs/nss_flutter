import 'package:flutter/material.dart';
import 'package:nss/constants/app_colors.dart';
import 'package:nss/constants/app_images.dart';
import 'package:remixicon/remixicon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final _pages =[
    Text("home"),
    Text("blog"),
    Text("activity"),
    Text("profile"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print('from app bar notification icon');
              },
              icon: Icon(
                Remix.notification_2_fill,
                color: AppColors.primary,
              )),
        ],
        leading: Container(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                height: 30,
              ),
              SizedBox(
                width: 7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NATIONAL SERVICE SCHEME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: MediaQuery.of(context).size.width * .023,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 3),
                  Text("Technical Cell, Kerala",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: MediaQuery.of(context).size.width * .021,
                          fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width * .5,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        // This sets the background color
        selectedItemColor: AppColors.fontOnSecondary,
        unselectedItemColor: AppColors.fontOnSecondary,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
              icon: _currentIndex == 0
                  ? Container(
                      padding: EdgeInsets.all(7),
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.fontOnSecondary, // Selected background color
                      ),
                      child:const Icon(
                        Remix.home_2_line,
                        color: AppColors.primary,
                      ))
                  : Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary, // Selected background color
                  ),
                  child:const Icon(
                    Remix.home_2_line,
                    color: AppColors.fontOnSecondary,
                  )),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: AppColors.primary,
              icon: _currentIndex == 1
                  ? Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fontOnSecondary, // Selected background color
                  ),
                  child:const Icon(
                    Remix.home_2_line,
                    color: AppColors.primary,
                  ))
                  : Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary, // Selected background color
                  ),
                  child:const Icon(
                    Remix.home_2_line,
                    color: AppColors.fontOnSecondary,
                  )),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: AppColors.primary,
              icon: _currentIndex == 2
                  ? Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fontOnSecondary, // Selected background color
                  ),
                  child:const Icon(
                    Remix.home_2_line,
                    color: AppColors.primary,
                  ))
                  : Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary, // Selected background color
                  ),
                  child:const Icon(
                    Remix.home_2_line,
                    color: AppColors.fontOnSecondary,
                  )),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: AppColors.primary,
              icon: _currentIndex == 3
                  ? Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fontOnSecondary, // Selected background color
                  ),
                  child:const Icon(
                   Remix.user_line,
                    color: AppColors.primary,
                  ))
                  : Container(
                  padding: EdgeInsets.all(7),
                  decoration:const  BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary, // Selected background color
                  ),
                  child:const Icon(
                    Remix.user_line,
                    color: AppColors.fontOnSecondary,
                  )),
              label: ''),

        ],
      ),
      body:_pages[_currentIndex]
    );
  }
}
