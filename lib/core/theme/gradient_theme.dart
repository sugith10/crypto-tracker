import 'package:flutter/material.dart';
import 'package:gradient_like_css/gradient_like_css.dart';

// overall theme gradient
BoxDecoration themeGradient(){
    return BoxDecoration(
          gradient: linearGradient(10, ['#000000 10%', '#a2ab58 100%']),
        );
}
  
// splash screen theme grdient
BoxDecoration splashThemeGradient(){
    return BoxDecoration(
          gradient: linearGradient(10, ['#000000 40%', '#a2ab58 100%']),
        );
}