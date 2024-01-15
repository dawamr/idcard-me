// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:contacts_service/contacts_service.dart';

Future saveFile(
  String? name,
  String? phone,
) async {
  // save to contact with name, phone, other params
  // Import the necessary packages

  // Create a new contact object
  final newContact = Contact();

  // Set the name of the contact
  newContact.givenName = name;

  // Set the phone number of the contact
  final phoneItem = Item(label: 'mobile', value: phone);
  newContact.phones = [phoneItem];

  // Save the contact to the device
  await ContactsService.addContact(newContact);
}
