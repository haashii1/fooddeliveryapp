import 'package:flutter/material.dart';
import 'package:myproject_01/home.dart';
import 'package:myproject_01/profilesection.dart/personalinfo.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final List<Map<String, dynamic>> itemsettings = [
    {
      'title': 'Profile',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.account_circle, size: 40),
      'ontap': (BuildContext context) => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Personalinfo()),
          ),
    },
    {
      'title': 'Addresses',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.article, size: 40),
      'ontap': null,
    },
    {
      'title': 'Payment Method',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.account_balance_wallet_rounded, size: 40),
      'ontap': null,
    },
    {
      'title': 'Favourites',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.favorite, size: 40),
      'ontap': null,
    },
    {
      'title': 'Cart',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.shop, size: 40),
      'ontap': null,
    },
    {
      'title': "FAQ's",
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.format_quote_sharp, size: 40),
      'ontap': null,
    },
    {
      'title': 'Notifications',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.notifications, size: 40),
      'ontap': null,
    },
    {
      'title': 'Settings',
      'trailing': Icons.arrow_forward_ios,
      'leading': const Icon(Icons.settings, size: 40),
      'ontap': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        titleSpacing: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(width: 20),
                Text(
                  'Username', // Replace with dynamic name if needed
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(179, 167, 154, 154),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.separated(
                  itemCount: itemsettings.length,
                  separatorBuilder: (context, index) => const Divider(
                      height: 1, color: Colors.grey), // Divider between items
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(itemsettings[index]['title']),
                      trailing: Icon(Icons.arrow_forward_ios),
                      leading: itemsettings[index]['leading'],
                      onTap: itemsettings[index]['ontap'] != null
                          ? () => itemsettings[index]['ontap'](context)
                          : null,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
