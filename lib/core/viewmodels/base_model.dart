import 'package:flutter/material.dart';

/**
 * A base model class for all the common state
 * boiler-plate code common in most view-models
 */


class BaseModel extends ChangeNotifier {
  bool _busy = false;
  bool get busy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }
}