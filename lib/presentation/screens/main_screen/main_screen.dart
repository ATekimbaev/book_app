import 'package:flutter/material.dart';
import 'package:mega_hack/presentation/screens/main_screen/filter_alert.dart';
import 'package:mega_hack/presentation/theme/app_colors.dart';
import 'package:mega_hack/presentation/theme/app_fonts.dart';
import 'package:mega_hack/presentation/screens/main_screen/expansion_body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => FilterAlert(),
            ),
            icon: const Icon(
              Icons.list,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Список конференц залов',
          style: AppFonts.s18w600,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: const [
            ExpansionTile(
              collapsedBackgroundColor: AppColors.white,
              backgroundColor: AppColors.white,
              title: Text(
                'АТС - 29 4 этаж',
                style: AppFonts.s24w600,
              ),
              subtitle: Text(
                'Какое-то описание',
                style: AppFonts.s18w400,
              ),
              children: [
                ExpansionBody(),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
