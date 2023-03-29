import 'package:flutter_week7_mvvm/core/network/api_endpoint.dart';
import 'package:flutter_week7_mvvm/core/network/network_services.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'network_services.mocks.dart';

@GenerateMocks([NetworkServices])
void main() {
  test('should get Response Success from /products', () async {
    var product = await NetworkServices().get(endpoint: ApiEndpoint.products);
    expect(product.statusCode, 200);
  });

  test('should get Response Error from /products', () async {
    /// Mocking
    NetworkServices networkServices = MockNetworkServices();

    when(networkServices.get(endpoint: ApiEndpoint.products))
        .thenAnswer((_) async => http.Response('', 400));

    var product = await networkServices.get(endpoint: ApiEndpoint.products);
    expect(product.statusCode, 400);
  });
}
