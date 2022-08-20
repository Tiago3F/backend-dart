import 'package:backend/src/modules/core/services/dot_env/doy_env_service.dart';
import 'package:test/test.dart';

void main() {
  test('doy env service ...', () async {
    final service = DotEnvService.instance;
    expect(service['DATABASE_URL'],
        'postgres://postgres:postgrespw@localhost:55000');
  });
}
