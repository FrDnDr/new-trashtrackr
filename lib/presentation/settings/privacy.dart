import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                buildCard(
                  title: 'Data Encryption',
                  description:
                      'Your data is securely encrypted to protect your privacy.',
                ),
                SizedBox(height: 16),
                buildCard(
                  title: 'Privacy Management',
                  description:
                      'Control how your data is used and shared with others.',
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Your Privacy & Security',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            buildListTile(
              context,
              'Data Encryption',
              'We use end-to-end encryption to secure your messages, files, and personal information.',
            ),
            buildListTile(
              context,
              'Digital Safety',
              'Learn how to secure your account and protect yourself online.',
            ),
            buildListTile(
              context,
              'Do Not Sell My Personal Information',
              'Control how your data is used for advertising and marketing purposes.',
            ),
            buildListTile(
              context,
              'Privacy Policy',
              'Review our complete privacy policy to understand how we handle your data.',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required String title, required String description}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListTile(BuildContext context, String title, String content) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        _showDialog(context, title, content);
      },
    );
  }

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PrivacyPage(),
  ));
}
