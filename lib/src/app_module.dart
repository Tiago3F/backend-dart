import 'package:backend/src/modules/core/services/database/postgres/postgres_database.dart';
import 'package:backend/src/modules/core/services/database/remote_database.dart';
import 'package:backend/src/modules/core/services/dot_env/doy_env_service.dart';
import 'package:backend/src/modules/user/user_resource.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.instance<DotEnvService>(DotEnvService.instance),
        Bind.singleton<RemoteDatabase>((i) => PostgresDatabase(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        Route.get('/', (Request request) => Response.ok('Inicial')),
        Route.resource(UserResource()),
      ];
}
