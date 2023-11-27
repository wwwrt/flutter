import 'package:flutter/material.dart';
import '../common/strings.dart' as strings;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: const Text(strings.homeScreenTitle),
        actions: [
          IconButton(
            onPressed: () => showDummyWorld(context),
            icon: const Icon(Icons.public),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      //cahts list
      body: ListView(
        children: const [
          ChatWidget(
            name: 'Profesor',
            message: 'Hei, de ce nu ai fost la curs?',
            headIcon: Icon(Icons.person),
          ),
          Divider(), // Horizontal line after the ChatWidget
          ChatWidget(
            name: 'Coleg',
            message: 'Ai facut tema pentru azi?',
            headIcon: Icon(Icons.person),
          ),
          Divider(), // Horizontal line after the ChatWidget
          ChatWidget(
            name: 'Colega',
            message: 'Fa-mi o poza!',
            headIcon: Icon(Icons.person),
          ),
          Divider(), // Horizontal line after the ChatWidget
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDummyDialog(context),
        label: const Text('NO'),
        icon: const Icon(Icons.ac_unit),
        focusColor: Colors.green,
        splashColor: Colors.yellow,
        foregroundColor: Colors.red,
        mouseCursor: SystemMouseCursors.cell,
      ),
    );
  }

  void showDummyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Hello Dialog'),
          content: Text('This is my content text for the dialog.'),
        );
      },
    );
  }

  void showDummyWorld(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Locaion Info'),
          content: Text('You are in Romania!'),
        );
      },
    );
  }
}

class ChatWidget extends StatelessWidget {
  final String name;
  final String message;
  final Icon headIcon;

  const ChatWidget({
    Key? key,
    required this.name,
    required this.message,
    required this.headIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: headIcon,
      ),
      title: Text(name),
      subtitle: Text(message),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.green.shade400,
              title: Text('Chat with $name'),
              content: Text('Unread: $message',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            );
          },
        );
      },
    );
  }
}
