part of 'crypto_bloc.dart';

@immutable
sealed class CryptoState {}

final class CryptoInitial extends CryptoState {}

final class Loading extends CryptoState{}

final class Success extends CryptoState{}

final class Fail extends CryptoState{}

final  class Error extends CryptoState{}
