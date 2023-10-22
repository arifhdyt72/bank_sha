import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'By Username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_profile.png',
            name: 'Yonna Yuan',
            username: 'yoenna',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_profile.png',
            name: 'Jhon Chen',
            username: 'hijhon',
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/img_profile.png',
            name: 'Semdech Tech',
            username: 'techdech',
            isVerified: false,
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              TransferResultUserItem(
                imageUrl: 'assets/img_profile.png',
                name: 'Yonna Yuan',
                username: 'yoenna',
                isVerified: true,
              ),
              TransferResultUserItem(
                imageUrl: 'assets/img_profile.png',
                name: 'Jhone Dhae',
                username: 'hijhon',
                isSelected: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
