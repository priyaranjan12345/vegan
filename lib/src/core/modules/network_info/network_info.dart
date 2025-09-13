import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'i_network_info.dart';

class NetworkInfo implements INetworkInfo {
  NetworkInfo({
    required this.internetConnection,
  });

  final InternetConnection internetConnection;

  @override
  Future<bool> get isConnected async =>
      await internetConnection.hasInternetAccess;
}
