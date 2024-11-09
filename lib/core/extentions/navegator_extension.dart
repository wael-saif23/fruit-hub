import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
 void pushNamed(String routeName,{Object? arguments}){
   Navigator.of(this).pushNamed(routeName, arguments: arguments);
 }
 void pushReplacementNamed(String routeName,{Object? arguments}){
   Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
 }
 void pushNamedAndRemoveUntil(String routeName,RoutePredicate predicate){
   Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate);
 }
 void pop(){
   Navigator.of(this).pop();
 }
}
