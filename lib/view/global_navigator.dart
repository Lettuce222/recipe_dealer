import 'package:flutter/cupertino.dart';
import 'package:recipe_dealer/view/create.dart';
import 'package:recipe_dealer/view/index.dart';

class GlobalNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.create),
              label: 'Create',
            )
          ],
        ),
        tabBuilder: (context, i) {
          return CupertinoTabView(
            builder: (context) {
              switch (i) {
                case 0:
                  return Index();
                case 1:
                  return Create();
                default:
                  return Center(
                    child: Text('Error'),
                  );
              }
            },
          );
        });
  }
}
