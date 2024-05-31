import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildError(String message) {
  return Center(
    child: Text(message),
  );
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}
