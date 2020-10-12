import 'package:flutter/material.dart';

const kHeaderStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
);

const kBodyStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

const kLoveIcon = Icon(
  Icons.favorite,
  color: Colors.red,
);

const kCommentIcon = Icon(
  Icons.message,
  color: Colors.teal,
);

const kSaveIcon =  Icon(
  Icons.save,
  color: Colors.purple,
);

const kMailIcon = Icon(
  Icons.mail,
  color: Colors.deepOrange,
  size: 36.0,
);

const kSecurityIcon = Icon(
Icons.security,
color: Colors.green,
size: 36.0,
);

const kInputDecoration = InputDecoration(
  hintText: 'Password',
  hintStyle: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);