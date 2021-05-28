import 'package:blog/services/listview_custom_service.dart';
import 'package:flutter/material.dart';

class ListViewCustomViewModel {
  Widget topOffsetViewModel(counter, category, pom) {
    return ListViewCustomService().topOffset(counter, category, pom);
  }
}
