import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/**
 * Utilities used by the user interface
 */

class Grid {
  static double _gutter;
  static double _margin;
  static int _columns;
  static double _colSpaceExcludingMargin;
  static double _singleColSpan;


  static double get gutter => _gutter;
  static double get margin => _margin;
  static int get columns => _columns;

  Grid(BuildContext context, double gutter,double margin, int totalCols){
    _gutter = gutter;
    _margin = margin;
    _columns = totalCols;
    _calculateColSpaceExcludingMargin(context, gutter,margin, totalCols);
  }


  static double _calculateColSpaceExcludingMargin(
      BuildContext context, double gutter, double margin, int totalCols) {
    var width = MediaQuery.of(context).size.width;
    var totalMarginSpace = margin * 2;
    var totalGutterSpace = (totalCols - 1) * _gutter;
    var allColsSpace = width - totalMarginSpace - totalGutterSpace;
    _singleColSpan = allColsSpace / totalCols;
  }



  static double giveColSpan(int cols,{
    double increaseBy = 0.0,
    double reduceBy = 0.0
  }) {
  
    return (_singleColSpan * cols ) + increaseBy - reduceBy;
  }
}
