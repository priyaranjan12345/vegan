import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Row(
              children: const [
                Icon(Icons.color_lens_rounded),
                SizedBox(width: 16),
                Text('Dark Theme'),
              ],
            ),
            value: true,
            onChanged: (v) {},
          ),
          ListTile(
            title: const Text('Language'),
            leading: const Icon(Icons.language),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Sign In'),
            leading: const Icon(Icons.login),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Account Details'),
            leading: const Icon(Icons.account_circle),
            onTap: () {},
          ),
          ListTile(
            title: const Text('About App'),
            leading: const Icon(Icons.info),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Version'),
            leading: const Icon(Icons.update),
            subtitle: const Text('1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
