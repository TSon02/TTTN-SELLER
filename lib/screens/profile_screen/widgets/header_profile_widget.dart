import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class HeaderProfileWidget extends StatelessWidget {
  const HeaderProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        elevation: 20,
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image10.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(
                      title: '${user.username}',
                      fontSize: 20,
                    ),
                    Text(
                      '${user.email}',
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
