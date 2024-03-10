import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int myIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      myIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/nab1.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/nab2.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/nab3.svg',
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/nab4.svg',
          ),
          label: '',
        ),
      ],
      currentIndex: myIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: onTabTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}



//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/icons/nab1.svg',
//               color: selectColor(0),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/icons/nab2.svg',
//           color:selectColor(0),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/icons/nab3.svg'),
//           activeIcon: SvgPicture.asset('assets/icons/nab3.svg'),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/icons/nab4.svg'),
//           activeIcon: SvgPicture.asset('assets/icons/nab4.svg'),
//           label: '',
//         ),
//       ],
//       currentIndex: myIndex,
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.grey,
//       onTap: onTabTapped,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//     );
//   }
//   Color selectColor(int index)
//   {
//      return myIndex == index ? Colors.black : Colors.grey;
//   }
// }
