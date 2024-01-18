import 'package:flutter/material.dart';

class phoneNumberEntryPage extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Enter Phone Number',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to handle the 'send' button click
                String phoneNumber = phoneNumberController.text;
                // Add your logic for sending the phone number
                print('Sending phone number: $phoneNumber');
              },
              child: Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
