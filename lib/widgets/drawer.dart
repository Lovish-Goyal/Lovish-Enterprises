import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            //header of drawer
            decoration: BoxDecoration(
                color: Colors.redAccent,
                image: DecorationImage(
                    image: AssetImage("images/image1.jpg"), fit: BoxFit.cover)),
            child: Text(""),
          ),
          ListTile(
            onTap: () => context.go('/'),
            //menu item of Drawer
            leading: const Icon(Icons.home),
            title: const Text('Home Page'),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go('/product'),
            leading: const Icon(Icons.list_alt),
            title: const Text('Products'),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go('/about'),
            leading: const Icon(Icons.person),
            title: const Text('About'),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go('/contact'),
            leading: const Icon(Icons.contact_page),
            title: const Text('Contact'),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go('/enquiry'),
            leading: const Icon(Icons.favorite_border),
            title: const Text('Enquiry'),
          ),
          const Divider(),
          ListTile(
            onTap: () => context.go('/wishlist'),
            leading: const Icon(Icons.favorite_border),
            title: const Text('wishlist'),
          ),
          const Divider(),
          ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.close),
              title: const Text("Close Drawer")),
          const Divider(),
        ],
      ),
    );
  }
}
