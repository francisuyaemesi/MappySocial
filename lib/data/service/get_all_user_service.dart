import 'package:mappy_social/data/model/user.dart';
import 'package:mappy_social/data/service/base_service.dart';

class GetAllUserService extends ServiceBase<List<User>> {
  @override
  Future<List<User>> call() async {
    final result = await get('user');
    return List.generate(
        result['data'].length, (index) => User.fromJson(result['data'][index]));
  }
}
