// Create an application like gmail and display Screens according to
// user selection and design each page with dummy data

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GmailPage extends StatelessWidget {
  final List<Email> emails = [
    Email('abc', 'Meeting tomorrow', 'Hi'),
    Email('xyz', 'Project update', 'How are you'),
    Email('abc', 'Lunch invitation', 'I\'m good'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(emails[index].sender),
            subtitle: Text(emails[index].subject),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmailDetailScreen(email: emails[index])),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComposeEmailScreen()),
          );
        },
        child: Icon(Icons.mail),
      ),
    );
  }
}

class Email {
  final String sender;
  final String subject;
  final String body;

  Email(this.sender, this.subject, this.body);
}

class EmailDetailScreen extends StatelessWidget {
  final Email email;

  EmailDetailScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('From: ${email.sender}'),
            SizedBox(height: 8),
            Text('Subject: ${email.subject}'),
            SizedBox(height: 16),
            Text(email.body),
          ],
        ),
      ),
    );
  }
}

class ComposeEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compose Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'To'),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(labelText: 'Subject'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Compose your email...'),
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _sendEmail(context);
          Navigator.pop(context);
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
void _sendEmail(BuildContext context) {
  print('Email sent!');
  Navigator.pop(context);
}