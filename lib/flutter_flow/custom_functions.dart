import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

String? downloadContact() {
  // VCARD dari data API yang sudah ada
// Placeholder API response
  final apiResponse =
      '{"name": "John Doe", "email": "johndoe@example.com", "phone": "+1-555-555-5555", "address": {"street": "123 Main St", "city": "Anytown", "state": "CA", "zip": "12345"}}';

  // Parse API response
  final data = json.decode(apiResponse);

  // Extract contact information
  final name = data['name'];
  final email = data['email'];
  final phone = data['phone'];
  final address = data['address'];

  // Format address
  final street = address['street'];
  final city = address['city'];
  final state = address['state'];
  final zip = address['zip'];
  final formattedAddress = '$street\n$city, $state $zip';

  // Generate vCard
  final vCard = 'BEGIN:VCARD\n'
      'VERSION:3.0\n'
      'PHOTO;MEDIATYPE=image/jpg:https://cmsvcard.solarion.id/assets/\n'
      'N:$name\n'
      'EMAIL:$email\n'
      'TEL:$phone\n'
      'ADR;TYPE=WORK,PREF:;;$formattedAddress\n'
      'END:VCARD';

  return vCard;
}

String? newCustomFunction(
  String? name,
  String? email,
  String? phone,
  String? whatsapp,
) {
  if (name != null && email != null && phone != null) {
    // Constructing the vCard data
    String vCardData = '''
      BEGIN:VCARD
      VERSION:3.0
      FN:$name
      EMAIL:$email
      TEL:$phone
      END:VCARD
    ''';

    // Save the vCard data to a file or return it for further usage
    // For saving it to a file, you can write it to a file or use it directly

    // Example of returning the vCard data
    return vCardData;
  } else {
    return null; // Handle the case when mandatory fields are missing
  }
}

String? extractSlugQr(String? urlQr) {
  // Get extract the last path Segment  from the given URL
  if (urlQr == null) {
    return null;
  }
  final uri = Uri.parse(urlQr);
  final segments = uri.pathSegments;
  if (segments.isEmpty) {
    return null;
  }
  return segments.last;
}
